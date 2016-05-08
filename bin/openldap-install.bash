#!/bin/bash
#
PW='secret'
BASE='dc=gncom,dc=net'

# 0. Enable SELinux for higher security.
setenforce 1
setsebool -P domain_kernel_load_modules 1

# 1. Install OpenLDAP Server
yum -y install openldap-servers openldap-clients
cp -av /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG 
chown -cR ldap. /var/lib/ldap
restorecon -vR /var/lib/ldap
systemctl start slapd 
systemctl enable slapd 

# Create folder to store log files in
mkdir -vpm 0755 /var/log/slapd
chown -c ldap. /var/log/slapd

# Redirect all log files through rsyslog.
sed -i "/local4.*/d" /etc/rsyslog.conf
cat > /etc/rsyslog.d/slapd.conf << EOF
local4.* /var/log/slapd/slapd.log
EOF
systemctl restart rsyslog

# 2. Set OpenLDAP admin password
ldapadd -Y EXTERNAL -H ldapi:/// << EOF          
dn: olcDatabase={0}config,cn=config
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PW} -c '$6$%s' | tr -d '\n')
EOF

# 3. Import basic Schemas
for ldif in /etc/openldap/schema/*.ldif; do
 REGEX=$(basename ${ldif} | cut -d. -f1);
 INSTALLED=$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config");
 if [[ ${INSTALLED} =~ ${REGEX} ]]; then echo "${REGEX}: already installed.";
 else echo -n "${REGEX}: installing..."; p=$(ldapadd -Y EXTERNAL -H ldapi:/// -f ${ldif} 2>1); echo -e "done.\n${p}"; fi; done;

# 4. Set openLDAP domain name
# 4.1. Specify the password generated above for "olcRootPW" section
ldapmodify -Y EXTERNAL -H ldapi:/// << EOF
dn: olcDatabase={1}monitor,cn=config
changetype: modify
replace: olcAccess
olcAccess: {0}to * by dn.base="gidNumber=0+uidNumber=0,cn=peercred,cn=external,cn=auth" read by dn.base="cn=root,${BASE}" read by * none

dn: olcDatabase={2}hdb,cn=config
changetype: modify
replace: olcSuffix
olcSuffix: ${BASE}

dn: olcDatabase={2}hdb,cn=config
changetype: modify
replace: olcRootDN
olcRootDN: cn=root,${BASE}

dn: olcDatabase={2}hdb,cn=config
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PW} -c '$6$%s' | tr -d '\n')

dn: olcDatabase={2}hdb,cn=config
changetype: modify
add: olcAccess
olcAccess: {0}to attrs=userPassword,shadowLastChange by dn="cn=root,${BASE}" write by anonymous auth by self write by * none
olcAccess: {1}to dn.base="" by * read
olcAccess: {2}to * by dn="cn=root,${BASE}" write by * read
EOF

# 5. If Firewalld is running, allow LDAP service. LDAP uses 389/TCP
systemctl is-active firewalld && { firewall-cmd --add-service=ldap --permanent; firewall-cmd --reload; }

exit 0;

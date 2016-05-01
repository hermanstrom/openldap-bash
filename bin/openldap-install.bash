#!/bin/bash
#
PASSWD='secret'
SUFFIX='dc=gncom,dc=net'

# 1. Install OpenLDAP Server
yum -y install openldap-servers openldap-clients
cp -av /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG 
chown -c ldap. /var/lib/ldap/DB_CONFIG 
systemctl start slapd 
systemctl enable slapd 

# 2. Set OpenLDAP admin password
ldapadd -Y EXTERNAL -H ldapi:/// << EOF          
dn: olcDatabase={0}config,cn=config
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PASSWD} -c '$6$%12s' | tr -d '\n')
EOF

# 3. Import basic Schemas
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/cosine.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/nis.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/inetorgperson.ldif

# 4. Set openLDAP domain name
# 4.1. Specify the password generated above for "olcRootPW" section
ldapmodify -Y EXTERNAL -H ldapi:/// << EOF
dn: olcDatabase={1}monitor,cn=config
changetype: modify
replace: olcAccess
olcAccess: {0}to * by dn.base="gidNumber=0+uidNumber=0,cn=peercred,cn=external,cn=auth" read by dn.base="cn=root,${SUFFIX}" read by * none

dn: olcDatabase={2}hdb,cn=config
changetype: modify
replace: olcSuffix
olcSuffix: ${SUFFIX}

dn: olcDatabase={2}hdb,cn=config
changetype: modify
replace: olcRootDN
olcRootDN: cn=root,${SUFFIX}

dn: olcDatabase={2}hdb,cn=config
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PASSWD} -c '$6$%12s' | tr -d '\n')

dn: olcDatabase={2}hdb,cn=config
changetype: modify
add: olcAccess
olcAccess: {0}to attrs=userPassword,shadowLastChange by dn="cn=root,${SUFFIX}" write by anonymous auth by self write by * none
olcAccess: {1}to dn.base="" by * read
olcAccess: {2}to * by dn="cn=root,${SUFFIX}" write by * read
EOF

# 4.2. Initialize LDAP
ldapadd -x -D cn=root,${SUFFIX} -w "${PASSWD}" << EOF
dn: ${SUFFIX}
objectClass: top
objectClass: dcObject
objectclass: organization
o: Genesis Networks and Communications, Inc.
dc: gncom

dn: cn=root,${SUFFIX}
objectClass: organizationalRole
cn: root
description: Directory Manager

dn: ou=people,${SUFFIX}
objectClass: organizationalUnit
ou: people

dn: ou=group,${SUFFIX}
objectClass: organizationalUnit
ou: group
EOF

# 5. If Firewalld is running, allow LDAP service. LDAP uses 389/TCP
systemctl is-active firewalld && { firewall-cmd --add-service=ldap --permanent; firewall-cmd --reload; }

exit 0;

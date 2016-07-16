#!/bin/bash
#
# $Id: openldap-server.bash,v 0.3 2016-06-17 04:08:35 hermanstrom Exp $
#
# This script installs openLDAP directory service on CentOS or RHEL v7
#

# 0. Set the environment 
die() { echo "${1}" 1>&2; exit 1; };
PW=secret;
ADMIN=root;
LDAPHOST=ldap;
LDAPI='ldapi:///'
DOMAIN=gncom.net;
BASE=dc=gncom,dc=net;
MIGDIR=/usr/share/migrationtools;
COMMON=${MIGDIR}/migrate_common.ph;
MT=$(basename ${MIGDIR});
PERL=$(which perl 2>&1) || die "Perl not installed.";
OU=(aliases mounts people group netgroup hosts networks protocols rpc services);
ETCKEY=(ALIASES AUTOFS FSTAB HOSTS NETWORKS PASSWD GROUP SERVICES PROTOCOLS RPC NETGROUP);
declare -A ETC=([ALIASES]=aliases [AUTOFS]=auto.master [FSTAB]=fstab\
 [HOSTS]=hosts [NETWORKS]=networks [PASSWD]=passwd [GROUP]=group\
 [SERVICES]=services [PROTOCOLS]=protocols [RPC]=rpc [NETGROUP]=netgroup);
declare -A MIGRATE=([ALIASES]=aliases [AUTOFS]=automount [FSTAB]=fstab\
 [HOSTS]=hosts [NETWORKS]=networks [PASSWD]=passwd [GROUP]=group\
 [SERVICES]=services [PROTOCOLS]=protocols [RPC]=rpc [NETGROUP]=netgroup);
EMAIL=herm@${DOMAIN};
CN=c7openldap64s0.${DOMAIN};
OU='Directory Service';
ORG='Genesis Networks And Communications, Inc.';
CITY='Woodlawn';
STATE='Maryland';
SUBJECT="/C=US/ST=${STATE}/L=${CITY}/O=${ORG}/OU=${OU}/CN=${CN}/emailAddress=${EMAIL}";
UTF8=$(locale -c LC_CTYPE -k | grep -q charmap.*UTF-8 && echo -utf8);
DIGEST=-aes256;
DAYS=1461;
BITS=4096;
SERIAL=0;
SLAP_URL_CF=/etc/sysconfig/slapd;
CERTS=/etc/openldap/certs;
CERT=${CERTS}/cert.pem;
KEY=${CERTS}/key.pem;
REQ=${CERTS}/req.pem;
CA=${CERTS}/ca.pem;

# 1. Enable SELinux for higher security.
setenforce 1
setsebool -P domain_kernel_load_modules 1

# 2. Install OpenLDAP Server
yum -y install openldap-servers openldap-clients nss-pam-ldapd checkpolicy policycoreutils-python
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

# 3. Set OpenLDAP admin password
ldapadd -Y EXTERNAL -H ldapi:/// << EOF          
$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}config,cn=config")
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PW} -c '$6$%s' | tr -d '\n')
EOF

# 4. Import basic Schemas
for ldif in /etc/openldap/schema/*.ldif; do
 REGEX=$(basename ${ldif} | cut -d. -f1);
 INSTALLED=$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config");
 if [[ ${INSTALLED} =~ ${REGEX} ]]; then echo "${REGEX}: already installed.";
 else echo -n "${REGEX}: installing..."; p=$(ldapadd -Y EXTERNAL -H ldapi:/// -f ${ldif} 2>1); echo -e "done.\n${p}"; fi; done;

# 5. Set openLDAP domain name
# Specify the password generated above for "olcRootPW" section
ldapmodify -Y EXTERNAL -H ldapi:/// << EOF
$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}monitor,cn=config")
changetype: modify
replace: olcAccess
olcAccess: {0}to * by dn.base="gidNumber=0+uidNumber=0,cn=peercred,cn=external,cn=auth" read by dn.base="cn=${ADMIN},${BASE}" read by * none

$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}hdb,cn=config")
changetype: modify
replace: olcSuffix
olcSuffix: ${BASE}

$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}hdb,cn=config")
changetype: modify
replace: olcRootDN
olcRootDN: cn=${ADMIN},${BASE}

$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}hdb,cn=config")
changetype: modify
add: olcRootPW
olcRootPW: $(slappasswd -s ${PW} -c '$6$%s' | tr -d '\n')

$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}hdb,cn=config")
changetype: modify
replace: olcDbIndex
olcDbIndex: uid,uidNumber,gidNumber,memberUid,uniqueMember,mail,surname,givenName,sn,member,objectClass,ou,cn eq,pres,sub

$(ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | egrep "^dn: olcDatabase={[0-9-]+}hdb,cn=config")
changetype: modify
add: olcAccess
olcAccess: {0}to attrs=userPassword,shadowLastChange by dn="cn=${ADMIN},${BASE}" write by anonymous auth by self write by * none
olcAccess: {1}to dn.base="" by * read
olcAccess: {2}to * by dn="cn=${ADMIN},${BASE}" write by * read
EOF

# 6. If Firewalld is running, allow LDAP service. LDAP uses 389/TCP
firewall-cmd --add-service=ldap --permanent; systemctl is-active firewalld && firewall-cmd --reload;

# 7. Migrate local files into OpenLDAP server
sed -i '/^$/d' /etc/${ETC[FSTAB]};
rpm -qa | grep -E ${MT} 2>&1 && yum -y reinstall ${MT} || yum -y install ${MT};

REGEX="/^\$DEFAULT_MAIL_DOMAIN/ s/padl.com/${DOMAIN}/g; /^\$DEFAULT_BASE/ s/dc=padl,dc=com/${BASE}/g;\
 /^\$EXTENDED_SCHEMA/ s/0/1/"; #; /^#if (\$EXTENDED_SCHEMA)/, +4s/^#//"; 
for ou in ${OU[@]}; do REGEX+="; s/ou=${ou^}/ou=${ou}/g"; done; sed -i -e "${REGEX}" ${COMMON};

${MIGDIR}/migrate_base.pl | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW};
${MIGDIR}/migrate_profile.pl "$LDAPHOST" | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW};
for key in ${ETCKEY[@]}; do [[ -e /etc/${ETC[$key]} ]] &&\
 ${MIGDIR}/migrate_${MIGRATE[$key]}.pl /etc/${ETC[$key]} | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW}; done;
[[ -e /etc/${ETC[NETGROUP]} ]] && for map in migrate_netgroup_by{user,host}.pl; do\
 ${MIGDIR}/${map} /etc/${ETC[NETGROUP]} | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW}; done;

# 8. Install OpenLDAP Client.
authconfig --enableldap --enableldapauth --ldapserver=${LDAPI} --ldapbasedn=${BASE} --enablemkhomedir --update

# 9. If SELinux is enabled, it needs to add a rule to allow creating home directories automatically by mkhomedir.
cat > mkhomedir.te << EOF
module mkhomedir 1.0; require { type unconfined_t; type oddjob_mkhomedir_exec_t; class file entrypoint; } 
allow unconfined_t oddjob_mkhomedir_exec_t:file entrypoint;
EOF

checkmodule -m -M -o mkhomedir.mod mkhomedir.te
semodule_package -o mkhomedir.pp -m mkhomedir.mod
semodule -v -i mkhomedir.pp

# 10. Enable OpenLDAP over TLS/SSL
umask 77; openssl genrsa -out ${KEY} -passout pass:${PW} ${DIGEST} ${BITS};
openssl req ${UTF8} -new -passin pass:${PW} -key ${KEY} -out ${REQ} -subj "${SUBJECT}";
openssl req ${UTF8} -in ${REQ} -passin pass:${PW} -key ${KEY} -x509 -days ${DAYS} -out ${CERT} -set_serial ${SERIAL};
cp -av ${CERT} ${CA}; chown -c ldap. ${KEY} ${REQ} ${CERT} ${CA};

ldapmodify -Y EXTERNAL -H ldapi:/// << EOF
dn: cn=config
changetype: modify
add: olcTLSCACertificateFile
olcTLSCACertificateFile: ${CA}
-
replace: olcTLSCertificateFile
olcTLSCertificateFile: ${CERT}
-
replace: olcTLSCertificateKeyFile
olcTLSCertificateKeyFile: ${KEY}
EOF

sed -i '/SLAPD_URLS=/ s|"ldapi:/// ldap:///"|"ldapi:/// ldap:/// ldaps:///"|p' ${SLAP_URL_CF};
systemctl restart slapd
firewall-cmd --add-service=ldaps --permanent; systemctl is-active firewalld && firewall-cmd --reload;

exit 0;

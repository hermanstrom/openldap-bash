#!/bin/bash
#
# $Id: openldap-client.bash,v 0.2 2016-05-20 20:35:35 hermanstrom Exp $
#
# This script installs openLDAP client on CentOS or RHEL v7
#
SERVER=192.168.1.40
BASE=dc=gncom,dc=net;

# 1. Install OpenLDAP Client.
yum -y install openldap-clients nss-pam-ldapd checkpolicy policycoreutils-python
authconfig --enableldap --enableldapauth --ldapserver=${SERVER} --ldapbasedn=${BASE} --enablemkhomedir --update

# 2. If SELinux is enabled, it needs to add a rule to allow creating home directories automatically by mkhomedir.
cat > mkhomedir.te << EOF
module mkhomedir 1.0;
require { type unconfined_t; type oddjob_mkhomedir_exec_t; class file entrypoint; }
allow unconfined_t oddjob_mkhomedir_exec_t:file entrypoint;
EOF

checkmodule -m -M -o mkhomedir.mod mkhomedir.te 
semodule_package -o mkhomedir.pp -m mkhomedir.mod 
semodule -v -i mkhomedir.pp 

exit 0;

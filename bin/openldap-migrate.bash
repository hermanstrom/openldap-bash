#!/bin/bash
#
# $Id: openldap-migrate.bash,v 0.1 2016/05/11 20:05:35 hermanstrom Exp $
#
# This script migrates local objects into openLDAP on CentOS/RHEL v7
#
die() { echo "${1}" 1>&2; exit 1; };
PW=secret;
ADMIN=root;
LDAPHOST=ldap;
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

rpm -qa | grep -E ${MT} 2>&1 && yum -y reinstall ${MT} || yum -y install ${MT};

REGEX="/^\$DEFAULT_MAIL_DOMAIN/ s/padl.com/${DOMAIN}/g; /^\$DEFAULT_BASE/ s/dc=padl,dc=com/${BASE}/g;\
 /^\$EXTENDED_SCHEMA/ s/0/1/; /^#if (\$EXTENDED_SCHEMA)/, +4s/^#//"; 
for ou in ${OU[@]}; do REGEX+="; s/ou=${ou^}/ou=${ou}/g"; done; sed -i -e "${REGEX}" ${COMMON};

${MIGDIR}/migrate_base.pl | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW};
${MIGDIR}/migrate_profile.pl "$LDAPHOST" | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW};
for key in ${ETCKEY[@]}; do [[ -e /etc/${ETC[$key]} ]] &&\
 ${MIGDIR}/migrate_${MIGRATE[$key]}.pl /etc/${ETC[$key]} | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW}; done;
[[ -e /etc/${ETC[NETGROUP]} ]] && for map in migrate_netgroup_by{user,host}.pl; do\
 ${MIGDIR}/${map} /etc/${ETC[NETGROUP]} | ldapadd -x -D cn=${ADMIN},${BASE} -w ${PW}; done;

exit 0;

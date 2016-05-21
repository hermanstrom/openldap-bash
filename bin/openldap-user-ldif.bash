#!/bin/bash
#
# $Id: openldap-user-ldif.bash,v 0.2 2016-05-20 20:35:35 hermanstrom Exp $
#
# This script is an attempt at user and group migration
#
PASSWD='secret'
SUFFIX='dc=gncom,dc=net'

GROUP_IDS=()
grep -E "x:[1-9][0-9]{3}[0-9]*:" /etc/passwd | ( while read; do
 USER_ID="$(echo "${REPLY}" | cut -d':' -f1)"
 USER_NAME="$(echo "${REPLY}" | cut -d':' -f5 | cut -d' ' -f1,2)"
 [ ! "${USER_NAME}" ] && USER_NAME="${USER_ID}"
 LDAP_SN="$(echo "${USER_NAME}" | cut -d' ' -f2)"
 LASTCHANGE_FLAG="$(grep "${USER_ID}:" /etc/shadow | cut -d':' -f3)"
 [ ! "${LASTCHANGE_FLAG}" ] && LASTCHANGE_FLAG="0"
 SHADOW_FLAG="$(grep "${USER_ID}:" /etc/shadow | cut -d':' -f9)"
 [ ! "${SHADOW_FLAG}" ] && SHADOW_FLAG="0"
 GROUP_ID="$(echo "${REPLY}" | cut -d':' -f4)"
 [ ! "$(echo "${GROUP_IDS[@]}" | grep "${GROUP_ID}")" ] && GROUP_IDS=("${GROUP_IDS[@]}" "${GROUP_ID}")

    echo "dn: uid=$USER_ID,ou=people,${SUFFIX}"
    echo "objectClass: inetOrgPerson"
    echo "objectClass: posixAccount"
    echo "objectClass: shadowAccount"
    echo "sn: ${LDAP_SN}"
    echo "givenName: $(echo "${USER_NAME}" | awk '{print $1}')"
    echo "cn: ${USER_NAME}"
    echo "displayName: ${USER_NAME}"
    echo "uidNumber: $(echo "${REPLY}" | cut -d':' -f3)"
    echo "gidNumber: $(echo "${REPLY}" | cut -d':' -f4)"
    echo "userPassword: {crypt}$(grep "${USER_ID}:" /etc/shadow | cut -d':' -f2)"
    echo "gecos: ${USER_NAME}"
    echo "loginShell: $(echo "${REPLY}" | cut -d':' -f7)"
    echo "homeDirectory: $(echo "${REPLY}" | cut -d':' -f6)"
    echo "shadowExpire: $(passwd -S "$USER_ID" | awk '{print $7}')"
    echo "shadowFlag: ${SHADOW_FLAG}"
    echo "shadowWarning: $(passwd -S "${USER_ID}" | awk '{print $6}')"
    echo "shadowMin: $(passwd -S "${USER_ID}" | awk '{print $4}')"
    echo "shadowMax: $(passwd -S "${USER_ID}" | awk '{print $5}')"
    echo "shadowLastChange: ${LASTCHANGE_FLAG}"
    echo
done

for TARGET_GROUP_ID in "${GROUP_IDS[@]}"
do
    LDAP_CN="$(grep ":${TARGET_GROUP_ID}:" /etc/group | cut -d':' -f1)"

    echo "dn: cn=${LDAP_CN},ou=group,${SUFFIX}"
    echo "objectClass: posixGroup"
    echo "cn: ${LDAP_CN}"
    echo "gidNumber: ${TARGET_GROUP_ID}"

    for MEMBER_UID in $(grep ":${TARGET_GROUP_ID}:" /etc/passwd | cut -d':' -f1,3)
    do
        UID_NUM=$(echo "${MEMBER_UID}" | cut -d':' -f2)
        [ ${UID_NUM} -ge 1000 -a ${UID_NUM} -le 65535 ] && echo "memberUid: $(echo "${MEMBER_UID}" | cut -d':' -f1)"
    done
    echo
done
)

exit 0;

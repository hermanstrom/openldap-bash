rpm -qa | wc -l
yum list sendmail*
yum list postfix*
yum install sendmail{,-cf}
yum remove postfix*
yum update
ip addr
ip addr | less
vi /etc/sysconfig/network-scripts/ifcfg-eth0
ifdown eth3
ifdown eth2
ifdown eth1
ip addr
ip addr | less
vi /etc/sysconfig/network-scripts/ifcfg-eth3
ip addr | less
ifdown eth3
ip addr | less
systemctl NetworkManager status
systemctl NetworkManager.service status
systemctl
systemctl NetworkManager.service status
systemctl status NetworkManager.service
systemctl stop NetworkManager.service
systemctl status NetworkManager.service
systemctl stop NetworkManager.service
systemctl restart NetworkManager.service
systemctl stop NetworkManager.service
systemctl status NetworkManager.service
ip addr
systemctl status network.service
systemctl stop network.service
systemctl  network.service
vi /etc/sysconfig/network-scripts/ifcfg-eth0
systemctl disable NetworkManager.service
vi /etc/sysconfig/network-scripts/ifcfg-eth0
mv -v /etc/sysconfig/network-scripts/ifcfg-e{th0,m1}
ip addr
vi /etc/sysconfig/network-scripts/ifcfg-lo 
mv -v /etc/sysconfig/network-scripts/ifcfg-e{th1,m2}
vi /etc/sysconfig/network-scripts/ifcfg-em2 
mv -v /etc/sysconfig/network-scripts/ifcfg-e{th2,m3}
vi /etc/sysconfig/network-scripts/ifcfg-em3
mv -v /etc/sysconfig/network-scripts/ifcfg-e{th3,m4}
vi /etc/sysconfig/network-scripts/ifcfg-em4
reboot
ip addr
vi /etc/udev/udev.conf 
ip addr
vi /etc/sysconfig/network-scripts/ifcfg-em3
vi /etc/sysconfig/network-scripts/ifcfg- 
/lib/udev/rename_device 
ip addr
file /lib/udev/rename_device 
/lib/udev/rename_device -h
/lib/udev/rename_device --help
vi /usr/lib/udev/rules.d/71-biosdevname.rules 
vi /usr/lib/udev/rules.d/80-net-name-slot.rules 
vi /usr/lib/udev/rules.d/75-net-description.rules 
( for i in {1..4}; do mv -v /etc/sysconfig/network-scripts/ifcfg-e{m,n}${i}; done; )
vi /etc/sysconfig/network-scripts/ifcfg-en4
vi /etc/sysconfig/network-scripts/ifcfg-en3
vi /etc/sysconfig/network-scripts/ifcfg-en2
vi /etc/sysconfig/network-scripts/ifcfg-en1
reboot
ip addr
vi /usr/lib/udev/rules.d/60-net.rules 
systemctl status NetworkManager.service
systemctl start NetworkManager.service
systemctl status NetworkManager.service
ip addr | less
systemctl stop NetworkManager.service
systemctl status NetworkManager.service
ip addr | less
systemctl stop NetworkManager.service
ip addr | less
systemctl disable NetworkManager.service
ip addr | less
systemctl status NetworkManager.service
ifdown eth3
ifdown en4
ip addr | less
systemctl stop network.service
ip addr | less
systemctl stop network.service
ifcfg | less
ip addr | less
biosdevname -i eth0
biosdevname -i eth1
biosdevname -i eth2
biosdevname -i eth3
ls -hal /etc/sysconfig/network-scripts/ifcfg-*
vi /etc/default/grub 
grub2-mkconfig 
grub2-mkconfig | less
cp -av /boot/grub2/grub.cfg{,~} 
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr | less
vi /etc/default/grub 
vi /usr/lib/udev/rules.d/80-net-name-slot.rules 
udevadm info /sys/class/net/eth0 | grep ID_NET_NAME
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr | less
vi /etc/default/grub 
reboot
ip addr | less
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr | less
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr 
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr 
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
ip addr 
reboot
ip addr 
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
vi /usr/lib/udev/rules.d/60-net.rules 
( for i in {1..4}; do mv -v /etc/sysconfig/network-scripts/ifcfg-e{n,m}${i}; done; )
vi /etc/sysconfig/network-scripts/ifcfg-em4
vi /etc/sysconfig/network-scripts/ifcfg-em3
vi /etc/sysconfig/network-scripts/ifcfg-em2
vi /etc/sysconfig/network-scripts/ifcfg-em1
reboot
ip addr 
systemctl status network.service
systemctl stop network.service
systemctl status network.service
systemctl start network.service
systemctl status network.service
journalctl -xe
vi /etc/sysconfig/network-scripts/ifcfg-em1
vi /etc/sysconfig/network-scripts/ifcfg-em2
vi /etc/sysconfig/network-scripts/ifcfg-em3
vi /etc/sysconfig/network-scripts/ifcfg-em4
systemctl stop network.service
ip addr 
systemctl start network.service
systemctl status network.service
reboot
systemctl status network.service
hostnamectl 
ip addr 
systemctl status systemd-hostname
systemctl status systemd-hostname.service
systemctl status systemd-hostnamed
systemctl start systemd-hostnamed
systemctl status systemd-hostnamed
ip addr
systemctl restart systemd-hostnamed
systemctl status systemd-hostnamed
systemctl enable systemd-hostnamed
systemctl status systemd-hostnamed
systemctl enable systemd-hostnamed
systemctl start systemd-hostnamed
systemctl status systemd-hostnamed
man machine-info
man systemd-hostnamed.service
systemctl status systemd-hostnamed.service
systemctl start systemd-hostnamed.service
systemctl status systemd-hostnamed.service
systemctl enable systemd-hostnamed.service
hostnamectl 
ip addr
systemctl status systemd-hostnamed
systemctl restart systemd-hostnamed.service
systemctl status systemd-hostnamed
hostnamectl 
systemctl status systemd-hostnamed.service
systemctl enable systemd-hostnamed.service
systemctl status network.service
systemctl restart network.service
systemctl status network.service
reboot
vi /etc/default/grub 
grub2-mkconfig -o /boot/grub2/grub.cfg
reboot
ip addr
systemctl status network.service
hostnamectl 
systemctl restart network.service
hostnamectl 
systemctl status network.service
hostnamectl 
reboot
hostnamectl 
hostnamectl --help
hostname
hostname --help
hostname -f
hostname -a
hostname -i
hostname -I
hostname -f -s -I
hostname -I -f
hostname -f
hostname -I
ip addr
vi /etc/sysconfig/network
vi /etc/hostname 
halt
adduser -a wheel herman
adduser -G wheel herman
id herman
vigr 
visudo 
password herman
passwd herman
reboot
yum install git
ping web
mkdir -vpm 700 .ssh
ls -hal
vi .ssh/id_rsa
vi .ssh/id_rsa.pub
vi .ssh/known_hosts
vi .ssh/authorized_keys
ls -hal .ssh/
chmod -c 0600 .ssh/{authorized_keys,id_rsa}
ls -hal .ssh/
echo "# openldap-bash" >> README.md
git init
git add README.md
vi .gitconfig
git commit -m "first commit"
git remote add origin git@github.com:hermanstrom/openldap-bash.git
git push -u origin master
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | grep -E "^dn: olcDatabase={[0-9-]+}monitor,cn=config"
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null 
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)
"
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)"
ldapsearch -H ldapi:/// -b "cn=config"
ldapsearch -H ldapi:/// -b "cn=config" dn
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: olcDatabase={[0-9-]+}monitor,cn=config"
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: olcDatabase={[0-9-]+}frontend,cn=config"
ldapsearch -H ldapi:/// -b "cn=config" "(olcDatabase=*)" dn 2>/dev/null | grep -E "^dn: olcDatabase={[0-9-]+}bdb,cn=config" | sed "s/^dn: //g"
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: olcDatabase={[0-9-]+}bdb,cn=config" | sed "s/^dn: //g"
ls /etc/openldap/schema/sudo.conf
ls /usr/share/doc/sudo-1.8.6p7/sample.sudo.conf 
less /usr/share/doc/sudo-1.8.6p7/sample.sudo.conf 
less /usr/share/doc/sudo-1.8.6p7/sample.sudoers 
less /usr/share/doc/sudo-1.8.6p7/schema.OpenLDAP 
ls -hal /etc/rsyslog.conf 
vim /etc/rsyslog.conf 
vim /etc/rsyslog.d/listen.conf 
vipw 
systemctl status rsyslog
( for ldif in /etc/openldap/schema/*.ldif; do echo "${ldif}"; done; )
( for ldif in /etc/openldap/schema/*.ldif; do basename ${ldif}; done; )
( for ldif in /etc/openldap/schema/*.ldif; do basename ${ldif} | cut -d. -f1; done; )
( for ldif in /etc/openldap/schema/*.ldif; do ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config" | grep "$(basename ${ldif} | cut -d. -f1)"; echo "${?}"; done; )
( for ldif in /etc/openldap/schema/*.ldif; do [[ "$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config")" =~ "$(basename ${ldif} | cut -d. -f1)" ]]; echo "${?}"; done; )
( for ldif in /etc/openldap/schema/*.ldif; do [[ "$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config")" =~ "$(basename ${ldif} | cut -d. -f1)" ]] && echo "${?}"; done; )
( for ldif in /etc/openldap/schema/*.ldif; do [[ "$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config")" =~ "$(basename ${ldif} | cut -d. -f1)" ]] || echo "${?}"; done; )
( for ldif in /etc/openldap/schema/*.ldif; do if [[ "$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config")" =~ "$(basename ${ldif} | cut -d. -f1)" ]]; then echo "$(basename ${ldif} | cut -d. -f1): installed."; else echo "$(basename ${ldif} | cut -d. -f1): installing...done."; done; )
( for ldif in /etc/openldap/schema/*.ldif; do if [[ "$(ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config")" =~ "$(basename ${ldif} | cut -d. -f1)" ]]; then echo "$(basename ${ldif} | cut -d. -f1): installed."; else echo "$(basename ${ldif} | cut -d. -f1): installing...done."; fi; done; )
ls -hal /usr/lib64/openldap
ls /usr/lib64/openldap
mkdir -vp bin
vi bin/openldap-install.bash
chmod -c +x bin/openldap-install.bash 
openldap-install.bash 
git add bin/openldap-install.bash 
git commit -m "openLDAP install script created and tested"
git push -u origin master
grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd | less 
chfn herman
grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd | less 
vipw 
grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd | less 
grep "x:[1-9][0-9][0-9][0-9]:" /etc/passwd 
grep "x:[0-9]+:" /etc/passwd | less 
grep "x:[0-9]*:" /etc/passwd | less 
grep "x:[1-9][0-9]*:" /etc/passwd | less 
grep "x:[1-9][0-9]+:" /etc/passwd | less 
grep "x:[1-9][0-9]{3}:" /etc/passwd | less 
grep -E "x:[1-9][0-9]{3}:" /etc/passwd | less 
grep -E "x:[1-9][0-9]*:" /etc/passwd | less 
grep -E "x:[1-9][0-9]{3,*}:" /etc/passwd | less 
grep -E "x:[1-9][0-9]{3}:" /etc/passwd | less 
cp -av /etc/passwd passwd
grep -E "x:[1-9][0-9]{3}:" passwd | less 
vi passwd
grep -E "x:[1-9][0-9]{3}:" passwd | less 
grep -E "x:[1-9][0-9]{3}[0-9]*:" passwd | less 
cp -av bin/openldap-{install,user-ldif}.bash 
vi bin/openldap-user-ldif.bash 
openldap-user-ldif.bash | less
vi bin/openldap-user-ldif.bash 
openldap-user-ldif.bash 
vi bin/openldap-user-ldif.bash 
yum install vim-enhanced
vim bin/openldap-user-ldif.bash 
openldap-user-ldif.bash | less
vim bin/openldap-user-ldif.bash 
openldap-user-ldif.bash | less
useradd 
useradd -u 65565 maria
id maria
userdel
userdel -r maria
useradd -u 65565 -g 65535 -G wheel maria
groupadd 
groupadd -g 65565 maria
useradd -u 65565 -g maria -G wheel maria
id maria
openldap-user-ldif.bash | less
history | less
slappasswd -s 'secret' -c '\$6\$%s'
slappasswd -s 'secret' -c '$6$%s'
vim bin/openldap-user-ldif.bash 
vim bin/openldap-install.bash
slappasswd -s 'secret' -c '$6$%s'
slappasswd -s 'secret -c '$6$%12s'
'
slappasswd -s 'secret' -c '$6$%12s'
slappasswd -s 'secret' -c '$6$%s'
slappasswd -s 'secret' -c '$6$%.12s'
slappasswd -s 'secret' -c '$6$%s'
vim bin/openldap-install.bash
ls -l /usr/share/openldap/migration
yum provides /usr/share/openldap/migration
yum provides */openldap/migration
yum provides */openldap/*
yum provides */migration/*
yum provides */migrate_common.ph
yum install migrationtools
ls -l /usr/share/migrationtools/
vim /usr/share/migrationtools/migrate_common.ph 
/usr/sbin/mkslapdconf
yum provides /usr/sbin/mkslapdconf
vim /usr/share/migrationtools/migrate_common.ph 
(-x "/usr/sbin/mkslapdconf")
[[ -x "/usr/sbin/mkslapdconf" ]]; echo ${?}
[[ -x "/usr/sbin/slappasswd" ]]; echo ${?}
[[ -x "/usr/sbin/mkswap" ]]; echo ${?}
vim /usr/share/migrationtools/migrate_common.ph 
vim bin/openldap-install.bash
less /etc/openldap/schema/collective.schema
less /etc/openldap/schema/collective.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/collective.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/corba.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/core.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/duaconf.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/dyngroup.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/java.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/misc.ldif 
vim bin/openldap-install.bash
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/openldap.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/pmi.ldif 
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/ppolicy.ldif 
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn
vim bin/openldap-install.bash
less /etc/openldap/schema/cosine.ldif 
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}*,cn=schema,cn=config"
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config"
ls /etc/openldap/schema/*.ldif
ls /etc/openldap/schema/*.ldif | wc -l
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config" | wc -l
vim bin/openldap-install.bash
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config"
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed -n '/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/\1/p'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed -n '/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/$1/p'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed -n '/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/1/p'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed -n 's/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/\1/p'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed -n 's/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/%1/p'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | sed 's/^dn: cn={[0-9-]+}(.*),cn=schema,cn=config/%1/'
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: cn={[0-9-]+}.*,cn=schema,cn=config"
vim bin/openldap-install.bash
mv -v .bash_history{,~}
git pull
systemctl status slapd
systemctl
ls -hal
vim bin/openldap-install.bash
history | grep install
history | grep 'yum install'
yum install vim-enhanced
vim bin/openldap-install.bash
openldap-install.bash
vim bin/openldap-install.bash
systemctl status rsyslog 
ls -hal /etc/rsyslog.d/listen.conf 
cat /etc/rsyslog.d/listen.conf 
cat /etc/rsyslog.conf 
git add bin/openldap-install.bash 
git add .bash_history
vi bin/openldap-install.bash
vim bin/openldap-install.bash
git add bin/openldap-install.bash 
ls -hal
mv -v .bash_history{,~}
git pull
openldap-install.bash 
vim bin/openldap-install.bash 
openldap-migrate.bash 
ls -l /usr/share/migrationtools/migrate_common.ph 
openldap-migrate.bash 
ls -l /usr/share/migrationtools/migrate_common.ph 
vim /usr/share/migrationtools/migrate_common.ph 
vim /usr/share/migrationtools/migrate_all_online.sh 
vim /usr/share/migrationtools/migrate_common.ph 
openldap-migrate.bash | less
openldap-migrate.bash 
ldapsearch -h localhost -p 389 -x -b "" -s base -LLL supportedSASLMechanisms
yum list *sasl*
yum list *sasl*.{noarch,x86_64}
yum info cyrus-sasl-ldap.x86_64
yum info cyrus-sasl-ntlm.x86_64
yum info cyrus-sasl-gssapi.x86_64
yum install cyrus-sasl-ldap.x86_64
yum install cyrus-sasl-gssapi.x86_64
rpm -lq cyrus-sasl-ldap
rpm -lq cyrus-sasl-gssapi
yum list *sasl*
yum list *sasl*.{noarch,x86_64}
rpm -lq cyrus-sasl
vim /etc/sysconfig/saslauthd
vim /etc/sasl2/Sendmail.conf 
less /usr/share/doc/cyrus-sasl-2.1.26/LDAP_SASLAUTHD
yum list *sasl*.{noarch,x86_64}
rpm -lq cyrus-sasl-lib
vim /usr/share/migrationtools/migrate_all_online.sh 
ldapsearch -H ldapi:/// -b "cn=schema,cn=config" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "olcDatabase={1}monitor,cn=config" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "cn=config" "olcDatabase=*" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "olcDatabase={2}hdb,cn=config"
ldapsearch -H ldapi:/// -b "olcDatabase={1}monitor,cn=config"
ldapsearch -H ldapi:/// -b "olcDatabase={0}config,cn=config"
ldapsearch -H ldapi:/// -b "olcDatabase={-1}frontend,cn=config"
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: "
ldapsearch -H ldapi:/// -b "cn={0}core,cn=schema,cn=config"
yum install vim-enhanced
yum install migrationtools
rpm -qa | grep -E "migrationtools~"; echo ${?}
rpm -qa | grep -E "migrationtools"; echo ${?}
cat /usr/share/migrationtools/migrate_common.ph 
yum install autofs
vim /etc/auto
vim /etc/autofs.conf 
vim /etc/auto.master
vim /usr/share/migrationtools/migrate_common.ph 
cp -av bin/openldap-{install,migrate}.bash
vim bin/openldap-migrate.bash
chmod -c +x bin/openldap-migrate.bash
openldap-migrate.bash
vim bin/openldap-migrate.bash
openldap-migrate.bash | less
vim bin/openldap-migrate.bash
openldap-migrate.bash | less
vim bin/openldap-migrate.bash
/usr/share/migrationtools/migrate_automount.pl /etc/auto.master | less
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
/usr/share/migrationtools/migrate_automount.pl /etc/auto.master | less
/usr/share/migrationtools/migrate_migrate_profile.pl ldap | less
/usr/share/migrationtools/migrate__profile.pl ldap | less
/usr/share/migrationtools/migrate_profile.pl ldap | less
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
/usr/share/migrationtools/migrate_group.pl /etc/group | less
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
chfn
chfn herman
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
grep '$EXTENDED_SCHEMA' /usr/share/migrationtools/migrate_*
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
sed '/^#if ($EXTENDED_SCHEMA) {/,+4s/^#//' /usr/share/migrationtools/migrate_common.ph | less 
yum -y reinstall migrationtools
sed -n '/^#if ($EXTENDED_SCHEMA) {/,+4s/^#//p' /usr/share/migrationtools/migrate_common.ph | less 
sed -n '/^$DEFAULT_MAIL_DOMAIN/,s/padl.com/gncom.net/p' /usr/share/migrationtools/migrate_common.ph | less 
sed -n '/^$DEFAULT_MAIL_DOMAIN/ s/padl.com/gncom.net/p' /usr/share/migrationtools/migrate_common.ph | less 
sed -n '/^#if ($EXTENDED_SCHEMA) {/, +4s/^#//p' /usr/share/migrationtools/migrate_common.ph | less 
sed -n '/^#if ($EXTENDED_SCHEMA) {/ +4s/^#//p' /usr/share/migrationtools/migrate_common.ph | less 
sed -n '/^#if ($EXTENDED_SCHEMA) {/, +4s/^#//p' /usr/share/migrationtools/migrate_common.ph | less 
vim bin/openldap-install.bash 
openldap-install.bash 
vim bin/openldap-install.bash 
openldap-install.bash 
vim bin/openldap-install.bash 
openldap-install.bash 
/usr/share/migrationtools/migrate_profile.pl ldap | less
/usr/share/migrationtools/migrate_base.pl | less
/usr/share/migrationtools/migrate_automount.pl /etc/auto.master | less
vim /usr/share/migrationtools/migrate_profile.pl
vim bin/openldap-install.bash 
openldap-install.bash | less 
vim bin/openldap-install.bash 
openldap-migrate.bash | less
/usr/share/migrationtools/migrate_aliases.pl /etc/aliases | less
openldap-migrate.bash | less
/usr/share/migrationtools/migrate_base.pl | less
openldap-migrate.bash 
git add bin/openldap-install.bash 
git add bin/openldap-migrate.bash 
git add .bash_history
git commit -m "openLDAP migrate script created and install improved."
git push
git config --global push.default simple
git push
vim .gitconfig 
vim .git/config 
vim .git/hooks/applypatch-msg.sample 
vim .git/hooks/pre-commit.sample 
vim .git/hooks/update.sample 
vim .git/hooks/commit-msg.sample 
yum install mlocate -y
updatedb 
locate systemd
yum list *vpn*
yum -y install openldap-clients nss-pam-ldapd
authconfig --enableldap --enableldapauth --ldapserver=127.0.0.1 --ldapbasedn=dc=gncom,dc=net --enablemkhomedir --update
cat > mkhomedir.te << EOFmodule mkhomedir 1.0;

require {
        type unconfined_t;
        type oddjob_mkhomedir_exec_t;
        class file entrypoint;
}

allow unconfined_t oddjob_mkhomedir_exec_t:file entrypoint;
EOF

checkmodule -m -M -o mkhomedir.mod mkhomedir.te
yum provides *bin/checkmodule
yum install checkpolicy
checkmodule -m -M -o mkhomedir.mod mkhomedir.te
semodule_package --outfile mkhomedir.pp --module mkhomedir.mod
yum provides *bin/semodule_package
yum install policycoreutils
yum install policycoreutils-python
semodule_package --outfile mkhomedir.pp --module mkhomedir.mod
semodule_package --help
semodule_package --o mkhomedir.pp --m mkhomedir.mod
semodule_package -o mkhomedir.pp -m mkhomedir.mod
semodule -i mkhomedir.pp
semodule --help
semodule -r mkhomedir.pp
semodule -r mkhomedir
semodule -v -i mkhomedir.pp
semodule -v -r mkhomedir
semodule -v -i mkhomedir.pp
ldapsearch -H ldapi:/// -b "cn=config" dn 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" dn 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" "cn=*" dn 2>/dev/null | grep -E "^dn: " | less 
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" "uid=*" dn 2>/dev/null | grep -E "^dn: " | less 
/usr/share/migrationtools/migrate_passwd.pl /etc/passwd | less
ldapsearch -H ldapi:/// -b "ou=*,dc=gncom,dc=net" dn 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=*,dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=*" | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=*"  2>/dev/null | grep -E "^dn: " | less 
/usr/share/migrationtools/migrate_services.pl /etc/services | less
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "uid*,ou=people"  2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "uid=*,ou=people"  2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "uid=*"  2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "oud=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" "uid=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" 2>/dev/null | less 
ldapsearch -H ldapi:/// -b "uid=*,ou=people,dc=gncom,dc=net" 2>/dev/null | less 
ldapsearch -H ldapi:/// -b "ou=people,dc=gncom,dc=net" 2>/dev/null | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "uid=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | grep -E "nextstep" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | grep -E -i "mon" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=people" 2>/dev/null | grep -E "^dn: " | grep -E -i "mon" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=people" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "ou=people" "uid=*" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" ou 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "uid=" ou 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" uid 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(uid=*)" 2>/dev/null | grep -E "^dn: " | less 
man ldapsearch
ldapsearch -LLL -b "dc=gncom,dc=net" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -LLL -b "dc=gncom,dc=net" | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(uid=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(ou=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(uid=*)(ou=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(cn=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(uid=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(cn=*)" 2>/dev/null | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(cn=*)" 2>/dev/null | grep -E "ou=people" | grep -E "^dn: " | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(cn=*)" 2>/dev/null | grep -E "ou=people" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" "(cn=*)" 2>/dev/null | grep "ou=people" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" 2>/dev/null | grep "ou=people" | less 
ldapsearch -H ldapi:/// -b "dc=gncom,dc=net" | less 
cp -av bin/openldap-{install,client}.bash 
vim bin/openldap-client.bash 
vim bin/openldap-install.bash 
git add bin/openldap-client.bash bin/openldap-install.bash 
git add .bash_history
git commit -m "openLDAP migrate script created client."
git push
yum list chrony
yum install chrony
date
rpm -lq chrony
systemctl status chronyd
systemctl start chronyd
date
systemctl status chronyd
date
git add .bash_history
git commit -m "openLDAP chronyd installed."
git add .bash_history
git commit -m "openLDAP chronyd installed."
git add .bash_history
git commit -m "openLDAP chronyd installed."
git push
shutdown 
ls -l /etc/pki/tls/certs/
vim /etc/pki/tls/certs/Makefile 
vim /etc/pki/tls/openssl.cnf 
cd /etc/pki/tls/certs
make slapd.pem
ls -l
vim slapd.pem 
vim slapd.key
make slapd.key
openssl rsa -in slapd.key -out slapd.key 
ls -l
make slapd.csr
ls -l
openssl req -in slapd.csr -noout -text
cat slapd.csr
ls -l
vim slapd.crt
openssl x509 -in slapd.crt -noout -text
vim /etc/pki/tls/certs/Makefile 
man req
vim slapd.crt
openssl x509 -in slapd.crt -noout -text
pwd
yum provives */ca-bundle.crt
ls -l 
less /etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem
less /etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt 
openssl x509 -in /etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt -noout -text
ls -l /etc/openldap/certs/
cp -av slapd.{crt,key} /etc/openldap/certs/ 
vim /etc/openldap/certs/ca.pem
ls -l /etc/openldap/certs/
mv -v /etc/openldap/certs/ca.{pem,crt}
ls -l /etc/openldap/certs/
chmod -c 0400 /etc/openldap/certs/{slapd.{crt,key},ca.crt}
chown -c ldap. /etc/openldap/certs/{slapd.{crt,key},ca.crt}
restorecon -vR /etc/openldap/certs/{slapd.{crt,key},ca.crt}
restorecon -vR /etc/openldap/certs/*
ldapsearch -H ldapi:/// -b "cn=config" | less 
ldapsearch -Y EXTERNAL -H ldapi:/// -b "cn=config" | less 
vim /etc/sysconfig/slapd
ls -l /etc/openldap/certs/
file /etc/openldap/certs/*
cat /etc/openldap/certs/password 
ldapsearch -Y EXTERNAL -H ldapi:/// -b "cn=config" | less 
cd
vim $(which openldap-client.bash)
useradd 
vim $(which openldap-install.bash)
groupadd 
cnfn --help
chfn --help
finger herman
yum install finger
finger herman
id maria
useradd -u 65565 -U -g 65565 -G wheel -p $(slappasswd -s secret -c '$6$%s' | tr -d '\n') maria;
id maria
groupadd -g 65565 maria; useradd -u 65565 -g 65565 -G wheel -p $(slappasswd -s secret -c '$6$%s' | tr -d '\n') maria;
id maria
finger maria
chfn -f "Maria Strom" -o "SOHO" -p "+1 443-653-2620" -h "+1 347-419-3397" maria
finger maria
vipw 
userdel 
userdel -r maria
groupdel 
groupdel maria
groupadd -g 65565 maria; useradd -u 65565 -g 65565 -G wheel -p $(slappasswd -s secret -c '$6$%s' | tr -d '\n') -c "Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
id maria
finger maria
usermod 
su - herman
userdel -r maria
groupadd -g 65565 maria; useradd -u 65565 -g 65565 -G wheel -p "$(slappasswd -s secret -c '$6$%s')" -c "Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
finger maria
su - herman
userdel -r maria
finger maria
id maria
groupadd -g65565 maria; useradd -u65565 -g65565 -Gwheel -p$(slappasswd -s secret -c '$6$%s') -c "Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
id maria
finger maria
su - herman
passwd maria
vipw 
vipw -s
userdel -r maria
finger maria
groupadd -g65565 maria; useradd -u65565 -g65565 -Gwheel -p '{CRYPT}$6$BjKl4bboM1rzn0VU$AVHMcJh6QLWCc76/5.96VCAxHoEeTTCeYBX.LQh59zVUdOckcgrG8OY1nitkrFqcaPtpWPulkPDm12QkBW4fJ1' -c "Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
finger maria
su - herman
passwd maria
su - herman
vipw -s
userdel -r maria
groupadd -g65565 maria; useradd -u65565 -g65565 -Gwheel -p'$6$n2zXlfKa$4VxD2erTIFM1ORi77ulvX6.TR9VO.X7LBbkEVQnve7zVaJ6eeGR6PWEoOfmX0HHURG3iv7tjmuhdwtO8elrWG/' -c"Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
finger maria
su - herman
userdel -r maria
groupadd -g65565 maria; useradd -u65565 -g65565 -Gwheel -p$(slappasswd -s secret -n -c '$6$%s' | sed 's/^{CRYPT}//') -c"Maria Strom,SOHO,+1 443-653-2620,+1 347-419-3397" maria;
su - herman
vipw
vim bin/openldap-migrate.bash 
vim bin/openldap-install.bash 
shutdown
vim bin/openldap-install.bash 
cp -av bin/openldap-{install,maria}.bash 
vim bin/openldap-install.bash 
vim bin/openldap-maria.bash 
git ids
git --help
ls -al bin
date 
date --help
date +%X
date +%T
date '+%F %T'
ls -al bin
vim bin/openldap-maria.bash 
vim bin/openldap-migrate.bash 
vim bin/openldap-maria.bash 
vim bin/openldap-migrate.bash 
vim bin/openldap-install.bash 
vim bin/openldap-user-ldif.bash 
vim bin/openldap-client.bash 
vim bin/openldap-user-ldif.bash 
vim bin/openldap-client.bash 
vim bin/openldap-user-ldif.bash 

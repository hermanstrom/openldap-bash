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

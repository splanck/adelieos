#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

ln -sf /usr/share/zoneinfo/UTC /etc/localtime

cp -aT /etc/skel/ /root/
chmod 700 /root
# unset the root password
passwd -d root

sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/ssh/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
sed -i 's/#\(Storage=\)auto/\1volatile/' /etc/systemd/journald.conf

sed -i 's/#\(HandleSuspendKey=\)suspend/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleHibernateKey=\)hibernate/\1ignore/' /etc/systemd/logind.conf
sed -i 's/#\(HandleLidSwitch=\)suspend/\1ignore/' /etc/systemd/logind.conf

# Add Live User
useradd -m -u 1010 -G users,sys,floppy,scanner,power,rfkill,optical,adm,log,lp,video,network,storage,wheel,audio -s /usr/bin/fish adelieos
passwd -d adelieos

groupadd -r autologin
gpasswd -a adelieos autologin

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "sudo calamares &" >> /home/adelieos/.xprofile

# Setup Passwords users: live and root
# chpasswd <<< 'adelieos:adelieos'
chpasswd <<< 'root:toor'

cp /etc/lsb-release-new /etc/lsb-release
cp /usr/share/backgrounds/xfce/adeliebg.png /usr/share/backgrounds/xfce/xfce-stripes.png
cp /etc/lightdm/lightdm.conf.live /etc/lightdm/lightdm.conf

# Adding Post-Install Tasks
systemctl enable lightdm.service
systemctl set-default graphical.target

# Networking
systemctl disable systemd-networkd.service
systemctl mask systemd-networkd.service

mkdir -p /etc/NetworkManager/conf.d/
echo "[main]
dns=systemd-resolved" > /etc/NetworkManager/conf.d/dns.conf
systemctl enable NetworkManager.service
systemctl enable systemd-resolved.service

# Enable sudo
sed -i -e 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers

#set permissions
chmod 750 /etc/sudoers.d
chmod 750 /etc/polkit-1/rules.d
chgrp polkitd /etc/polkit-1/rules.d


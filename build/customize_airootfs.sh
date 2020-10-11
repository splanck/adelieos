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

mkdir /home/adelieos/Documents
mkdir /home/adelieos/Downloads
mkdir /home/adelieos/Desktop
mkdir /home/adelieos/Templates
mkdir /home/adelieos/Pictures
mkdir /home/adelieos/Videos
mkdir /home/adelieos/Public

chown -R adelieos:adelieos /home/adelieos
chmod -R 700 /home/adelieos

groupadd -r autologin
gpasswd -a adelieos autologin
gpasswd -a adlieos lp

runuser -l adelieos -c 'LC_ALL=C xdg-user-dirs-update'

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "dconf load /org/gnome/ < /home/adelieos/adelieos_gnome_settings" >> /home/adelieos/.xprofile
echo "sudo -E calamares &" >> /home/adelieos/.xprofile

# Setup Passwords users: live and root
# chpasswd <<< 'adelieos:adelieos'
chpasswd <<< 'root:toor'

cp /etc/lsb-release-new /etc/lsb-release
cp /usr/share/backgrounds/xfce/adeliebg.png /usr/share/backgrounds/xfce/xfce-stripes.png
cp /etc/gdm/custom.conf.live /etc/gdm/custom.conf

# Adding Post-Install Tasks
systemctl enable gdm.service
systemctl set-default graphical.target

# Networking
systemctl disable systemd-networkd.service
systemctl mask systemd-networkd.service

mkdir -p /etc/NetworkManager/conf.d/
echo "[main]
dns=systemd-resolved" > /etc/NetworkManager/conf.d/dns.conf
systemctl enable NetworkManager.service
systemctl enable systemd-resolved.service
systemctl enable bluetooth.service

# Enable sudo
sed -i -e 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers

#set permissions
chmod 750 /etc/sudoers.d
chmod 750 /etc/polkit-1/rules.d
chgrp polkitd /etc/polkit-1/rules.d


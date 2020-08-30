#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

# Add Live User
useradd -m -u 1010 -G users,sys,floppy,scanner,power,rfkill,optical,adm,log,lp,video,network,storage,wheel,audio -s /bin/bash live

# Setup Passwords users: live and root
chpasswd <<< 'live:live'
chpasswd <<< 'root:toor'

cp /etc/lsb-release-new /etc/lsb-release

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

# Reflector
# reflector --age 3 --protocol https --sort rate --save /etc/pacman.d/mirrorlist


#!/bin/bash

chown -R root:root *

cp -r corefs releng

[[ -d ../releng ]] && rm -r ../releng

cp -r releng/ ../releng/

[[ -d ../releng/airootfs/etc/systemd/system/getty@tty1.service.d ]] && rm -r ../releng/airootfs/etc/systemd/system/getty@tty1.service.d
[[ -d ../releng/airootfs/etc/systemd/network ]] && rm -r ../releng/airootfs/etc/systemd/network
[[ -d ../releng/airootfs/etc/systemd/system/systemd-networkd-wait-online.service.d ]] && rm -r ../releng/airootfs/etc/systemd/system/systemd-networkd-wait-online.service.d
[[ -f ../releng/airootfs/etc/systemd/system/dbus-org.freedesktop.network1.service ]] && rm ../releng/airootfs/etc/systemd/system/dbus-org.freedesktop.network1.service
[[ -f ../releng/airootfs/etc/systemd/system/dbus-org.freedesktop.resolve1.service ]] && rm ../releng/airootfs/etc/systemd/system/dbus-org.freedesktop.resolve1.service
[[ -f ../releng/airootfs/etc/systemd/system/multi-user.target.wants/systemd-networkd.service ]] && rm ../releng/airootfs/etc/systemd/system/multi-user.target.wants/systemd-networkd.service
[[ -f ../releng/airootfs/etc/systemd/system/multi-user.target.wants/systemd-resolved.service ]] && rm ../releng/airootfs/etc/systemd/system/multi-user.target.wants/systemd-resolved.service
[[ -f ../releng/airootfs/etc/systemd/system/sockets.target.wants/systemd-networkd.socket ]] && rm ../releng/airootfs/etc/systemd/system/sockets.target.wants/systemd-networkd.socket
[[ -f ../releng/airootfs/etc/systemd/system/network-online.target.wants/systemd-networkd-wait-online.service ]] && rm ../releng/airootfs/etc/systemd/system/network-online.target.wants/systemd-networkd-wait-online.service
[[ -f ../releng/airootfs/etc/resolv.conf ]] && rm ../releng/airootfs/etc/resolv.conf

cp build.sh ../releng/

cp packages.x86_64 ../releng/

cp customize_airootfs.sh ../releng/airootfs/root/

cp splash.png ../releng/syslinux/

cp archiso_head.cfg ../releng/syslinux/

cp archiso_sys.cfg ../releng/syslinux/

echo "adelieos" > ../releng/airootfs/etc/hostname

[[ -d usr ]] && cp -r usr ../releng/airootfs/

[[ -d etc ]] && cp -r etc ../releng/airootfs/

[[ -d lightdm ]] && cp -r lightdm ../releng/airootfs/etc/

cd ../releng

./build.sh -v


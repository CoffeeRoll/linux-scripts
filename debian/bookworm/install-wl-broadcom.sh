# /bin/bash
# https://wiki.debian.org/wl

# comment out cdrom sources
sed -i -e 's/deb cdrom/# deb cdrom/g' /etc/apt/sources.list

echo -e "\ndeb http://deb.debian.org/debian bookworm main contrib non-free-firmware non-free" >> /etc/apt/sources.list

apt update

apt install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

modprobe -r b44 b43 b43legacy ssb brcmsmac bcma

modprobe wl

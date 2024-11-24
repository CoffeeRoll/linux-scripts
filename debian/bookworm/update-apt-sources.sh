# comment out cdrom sources
sed -i -e 's/deb cdrom/# deb cdrom/g' /etc/apt/sources.list

echo -e "\ndeb http://deb.debian.org/debian bookworm main contrib non-free-firmware non-free" >> /etc/apt/sources.list

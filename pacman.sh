sed -i '/#ParallelDownloads = 5/s/^#//g' /etc/pacman.conf
pacman -Syy
pacman -S --noconfirm reflector
reflector --verbose -l 10 -f 5 -c US -p https --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware intel-ucode btrfs-progs networkmanager
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
timedatectl set-timezone America/Chicago
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo LANG=en_US.UTF-8
echo archxps > /etc/hostname
touch /etc/hosts
{ 
  echo '127.0.0.1 localhost'; 
  echo '::1 localhost'; 
  echo '127.0.1.1 archxps';
} >> /etc/hosts
mkinitcpio -P
bootctl install
{
  echo 'default arch.conf';
  echo 'timeout 4';
  echo 'console-mode max';
  echo 'editor no';
} >> /boot/loader/loader.conf
{
  echo 'title Arch Linux';
  echo 'nomodeset';
  echo 'linux /vmlinuz-linux';
  echo 'initrd /intel-ucode.img';
  echo 'initrd /initramfs-linux.img';
  echo 'options root="LABEL=arch" rw';
} /boot/loader/entries/arch.conf
exit
umount -R /mnt
reboot

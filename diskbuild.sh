sgdisk -z /dev/nvme0n1
sgdisk -G /dev/nvme0n1
sgdisk -n 0:0:+512MiB -t 0:ef00 -c 0:boot /dev/nvme0n1
sgdisk -n 0:0:0 -t 0:8300 -c 0:arch /dev/nvme0n1
sgdisk -G /dev/nvme0n1
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.btrfs -L arch -n 32k -f /dev/nvme0n1p2
mount /dev/nvme0n1p2 /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@vms
btrfs subvolume create /mnt/@.snapshots
umount /mnt
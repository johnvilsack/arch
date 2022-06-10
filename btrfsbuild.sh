mount /dev/nvme0n1p2 /mnt
btrfs subvolume create /mnt/@
mkdir /mnt/@/0
btrfs subvolume create /mnt/@/0/snapshot
btrfs subvolume create /mnt/@vm
mkdir /mnt/.snapshots
umount /mnt
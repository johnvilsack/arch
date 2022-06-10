mount /dev/nvme0n1p2 /mnt

btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@vms
btrfs subvolume create /mnt/@.snapshots
umount /mnt
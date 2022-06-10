mount /dev/nvme0n1p2 /mnt

btrfs subvolume create /mnt/@/0/snapshot
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@vm
btrfs subvolume create /mnt/@.snapshots

umount /mnt
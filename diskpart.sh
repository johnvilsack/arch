sgdisk -z /dev/nvme0n1
sgdisk -G /dev/nvme0n1
sgdisk -n 0:0:+512MiB -t 0:ef00 -c 0:boot /dev/nvme0n1
sgdisk -n 0:0:0 -t 0:8304 -c 0:btrfs /dev/nvme0n1
sgdisk -G /dev/nvme0n1

mkfs.fat -L boot -F32 /dev/nvme0n1p1
mkfs.btrfs -L arch -n 32k -f /dev/nvme0n1p2
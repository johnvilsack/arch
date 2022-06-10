sed -i '/#ParallelDownloads = 5/s/^#//g' /etc/pacman.conf
pacman -Syy
pacman -S --noconfirm reflector
reflector --verbose -l 10 -f 5 -c US -p https --save /etc/pacman.d/mirrorlist

fdisk -l
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
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@ /dev/nvme0n1p2 /mnt
mount /dev/nvme0n1p1 /mnt/boot
mkdir -p /mnt/{boot,home,vms,.snapshots,btrfs}
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@home /dev/nvme0n1p2 /mnt/home
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@vms /dev/nvme0n1p2 /mnt/vms
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@.snapshots /dev/nvme0n1p2 /mnt/.snapshots
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvolid=5 /dev/nvme0n1p2 /mnt/btrfs

mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@ /dev/nvme0n1p2 /mnt
mkdir -p /mnt/{boot,home,vms,.snapshots,btrfs}
mount /dev/nvme0n1p1 /mnt/boot
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@home /dev/nvme0n1p2 /mnt/home
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@vms /dev/nvme0n1p2 /mnt/vms
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@.snapshots /dev/nvme0n1p2 /mnt/.snapshots
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvolid=5 /dev/nvme0n1p2 /mnt/btrfs


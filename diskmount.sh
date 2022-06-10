mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@ /dev/nvme0n1p2 /mnt
mkdir -p /mnt/{boot,home,vms,.snapshots,btrfs}
mount /dev/nvme0n1p1 /mnt/boot
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@home /dev/nvme0n1p2 /mnt/home
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@vms /dev/nvme0n1p2 /mnt/vms
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvol=@.snapshots /dev/nvme0n1p2 /mnt/.snapshots
mount -a rw,noatime,nodiratime,space_cache,ssd,commit=120,compress=zstd,subvolid=5 /dev/nvme0n1p2 /mnt/btrfs
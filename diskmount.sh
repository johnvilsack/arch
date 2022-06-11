mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@/0/snapshot /dev/nvme0n1p2 /mnt
mkdir -p /mnt/{boot,vm,.snapshots}
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@ /dev/nvme0n1p2 /mnt/.snapshots
mount -o rw,ssd,noatime,nodiratime,compress=zstd,space_cache=v2,commit=120,subvol=@vm /dev/nvme0n1p2 /mnt/vm
mount /dev/nvme0n1p1 /mnt/boot

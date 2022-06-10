# curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/get.sh && chmod 700 get.sh && ./get.sh

curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/pacman.sh && chmod 700 pacman.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskbuild.sh && chmod 700 diskbuild.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskmount.sh && chmod 700 diskmount.sh
./pacman.sh
./diskbuild.sh
./diskmount.sh

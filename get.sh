# curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/get.sh && chmod 700 get.sh && ./get.sh

curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/pacman.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskbuild.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskmount.sh
./pacman.sh
./diskbuild.sh
./diskmount.sh

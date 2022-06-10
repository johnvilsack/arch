# curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/install.sh | ./install.sh

curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/pacman.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskbuild.sh
curl -LJO https://raw.githubusercontent.com/johnvilsack/arch/master/diskmount.sh
./pacman.sh
./diskbuild.sh
./diskmount.sh

#!/bin/zsh

# Colors
Red="\033[1;31m"
Green="\033[1;32m"
Yellow="\033[1;33m"
Brown="\033[38:2:255:165:0m"
Cyan="\033[1;36m"
Rst="\033[0m"

echo -e ${Yellow}"Vamos começar "${Rst}

echo -e ${Green}"Starting install dev scripts..."${Rst}
sleep 1

#sudo apt update && sudo apt -y upgrade

sudo apt install -y build-essential software-properties-common apt-transport-https curl
sudo apt install -y autoconf automake gdb git libffi-dev zlib1g-dev libssl-dev
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

#sudo apt install -y guake nano screenfetch snapd
#sudo systemctl enable snapd
#sudo service snapd start
#sudo service snapd status
#sudo snap install core
#sudo snap install code --classic

sudo snap install slack --classic

sleep 3
echo "################################"
echo -e ${Cyan}"Kali zsh config successfully installed."${Rst}
echo -e ${Cyan} "Install dev done :)"${Rst}

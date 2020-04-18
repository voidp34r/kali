#!/bin/bash

# install kali repo
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list 
#kali-last-snapshot (Point release so more “stable” & the “safest”) ​ 
#echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" | sudo tee /etc/apt/sources.list 
#kali-experimental (Packages which are under testing - often used with the rolling repository)
#echo "deb http://http.kali.org/kali kali-experimental main non-free contrib" | sudo tee -a /etc/apt/sources.list

#install vscode
#The repository and key can also be installed manually with the following script:
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo rm packages.microsoft.*

# install opera
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list'

# install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/debian \
#   stable"
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable"
echo "deb [arch=amd64] https://download.docker.com/linux/debian jessie stable" | sudo tee /etc/apt/sources.list.d/debian.list

#install kubectl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

#install google chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google-chrome.list


sudo apt update
sudo apt -y install curl git nano zsh wget apt-transport-https ca-certificates gnupg-agent gnupg2 software-properties-common
sudo apt -y install firmware-ipw2x00 firmware-ralink firmware-brcm80211 firmware-atheros firmware-realtek firmware-iwlwifi firmware-b43legacy-installer firmware-b43-installer
sudo apt -y install bluetooth bluez bluez-tools blueman bluelog
sudo apt -y install numix-* wm-icons xfwm4-theme-breeze obsidian-icon-theme node-highlight.js
sudo apt -y install sound-icons oxygen-sounds

sudo apt update
sudo apt -y install code code-insiders

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose

sudo apt update
sudo apt -y install etherape snapd guake guake-indicator fonts-firacode fonts-cacadia-code

#If you would like to use Docker as a non-root user, you should now consider adding your user to the “docker” group with something like:
sudo usermod -aG docker $USER

sudo apt-get update
sudo apt-get install -y kubectl

# install okteto
curl https://get.okteto.com -sSfL | sh

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/voidp34r/oh-my-zsh/master/tools/install.sh)"

sudo systemctl --status-all
sudo systemctl enable ssh.service
sudo systemctl start ssh.service
sudo systemctl status  ssh.service

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl status  bluetooth.service

sudo systemctl enable snapd.service
sudo systemctl start snapd.service
sudo systemctl status snapd.service
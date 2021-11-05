#!/bin/zsh

wget -O teams.deb https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.4855_amd64.deb
sudo apt install ./teams.deb

wget -O edge.deb https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_96.0.1028.0-1_amd64.deb
sudo apt install ./edge.deb
#!/bin/bash

#Atualização do system
sudo apt update -y
sudo apt upgrade -y

# Install de apps em apt#
#---------------------------#
# Wine #
sudo apt install wine-stable -y

# Wine Tricks #
sudo apt install wine-tricks -y

# DXVK #
sudo apt install dxvk dxvk-wine64-development -y

# Lutris #
sudo apt install lutris -y

# Discord #
sudo apt install discord -y

# Steam #
sudo apt install steam-installer steam-devices -y 
#---------------------------#

# Driver adptador xbox one #
sudo apt install curl cabextract systemd libusb-1.0-0-dev -y
git clone https://github.com/medusalix/xow
make BUILD=RELEASE
sudo make install
sudo systemctl enable xow
sudo systemctl start xow

# Finalização #
sudo apt autoremove -y
zenity --info --text="Instalação concluida por favor reinicie seu computador"
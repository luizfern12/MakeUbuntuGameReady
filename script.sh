#!/bin/bash

#Atualização do sistema
apt update -y
apt upgrade -y

# Instalação de pacotes em apt#
#---------------------------#

apt install git dxvk dxvk-wine64-development lutris steam-installer steam-devices wine-stable wine-tricks curl cabextract systemd libusb-1.0-0-dev -y

#---------------------------#

# Driver adptador xbox one #
git clone https://github.com/medusalix/xow
make BUILD=RELEASE
make install
systemctl enable xow
systemctl start xow

# Finalização #
apt update && apt upgrade -y && apt autoremove -y
zenity --info --text="Instalação concluida por favor reinicie seu computador"

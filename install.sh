#!/bin/bash
#update_system
sudo apt update && sudo apt upgrade -y



#wine
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo mkdir -pm755 /etc/apt/keyrings
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources


sudo apt update -y

sudo apt install --install-recommends winehq-stable -y

#emacs
sudo apt-get install ripgrep  fd-find -y 
sudo apt install emacs -y 

#nvidia
sudo apt install nvidia-driver-550 -y 


#remove aps
sudo apt remove transmission-common  libreoffice-core   libreoffice-gnome libreoffice-gtk3 libreoffice-math   libreoffice-writer libreoffice-impress  libreoffice-common   firefox -y 

#program 
sudo apt install python3.12-full git flatpak   python3-venv  python3-pip qbittorrent vim  vlc  wget curl -y 
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo -y
flatpak install flathub org.mozilla.firefox
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.7/obsidian_1.7.7_amd64.deb
cd Downloads




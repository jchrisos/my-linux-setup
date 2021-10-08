#!/bin/bash
#### update system
apt update && apt upgrade -y

#### add sudo
apt install sudo -y
usermod -aG sudo $USER

#### Utilities
apt install snapd -y
snap install core

apt install zip -y
apt install curl -y
apt install materia-gtk-theme -y
apt install papirus-icon-theme -y
apt install gnome-tweak-tool -y
apt install piper -y
apt install psensor -y
apt install gparted -y
apt install stacer -y
apt install net-tools -y
apt install jq -y
apt install speedtest-cli -y
apt install ffmpeg -y
apt install vlc -y
apt install gnome-sushi -y
apt install neofetch -y
apt install python3-pip -y
apt install digikam -y
apt install handbrake -y
apt install drawing -y
snap install spotify

#### Dev
apt install git -y
apt install tilix -y
apt install openfortivpn -y
apt install openjdk-17-jdk -y
apt install mysql-server -y
apt install meld -y
apt install htop -y
apt install ctop -y
apt install vim -y
apt install maven -y
apt install filezilla -y
snap install slack
snap install ngrok
snap install gitkraken --classic
snap install postman
snap install slack --classic
snap install code --classic
snap install intellij-idea-community --classic
snap install datagrip --classic
snap install android-studio-canary --classic
snap install beekeeper-studio
apt install qemu-kvm -y
usermod -aG kvm $USER
apt install virt-manager -y

#### purge unused apps
apt purge aisleriot -y
apt purge five-or-more -y
apt purge four-in-a-row -y
apt purge hitori -y
apt purge lightsoff -y
apt purge quadrapassel -y
apt purge reversi -y
apt purge shotwell -y
apt purge totem -y
apt purge evolution -y
apt purge gnome-games -y
apt purge gnome-clocks -y
apt purge gnome-contacts -y
apt purge gnome-klotski -y
apt purge gnome-maps -y
apt purge gnome-sound-recorder -y
apt purge gnome-todo -y
apt purge gnome-music -y
apt purge gnome-weather -y
apt purge libreoffice-draw -y
apt purge libreoffice-impress -y

#### clean installation
apt autopurge

echo '---------------------------------------------------------------------'
echo '| install sdkman via https://sdkman.io/install                      |'
echo '| install node via nvm: https://github.com/nvm-sh                   |'
echo '| nvm install node                                                  |'
echo '| npm install http-server --global                                  |'
echo '| install docker via https://docs.docker.com/engine/install/ubuntu/ |'
echo '---------------------------------------------------------------------'
echo ''
echo 'install gnome-extensions below:'
echo '- User Themes'
echo '- OpenWeather'
echo '- Trash'
echo '- NordVPN Connect'
echo '- Docker Integration'
echo '- Dash to Panel'

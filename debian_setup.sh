#!/bin/bash
#### update system
apt update && apt upgrade -y

#### Utilities
apt install snapd
snap install core

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
apt install zip -y
apt install git -y
apt install tilix -y
apt install openfortivpn -y
apt install openjdk-17-jdk -y
apt install mysql-server -y
apt install meld -y
apt install curl -y
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

#### remove unused apps
apt remove aisleriot -y
apt remove five-or-more -y
apt remove four-in-a-row -y
apt remove hitori -y
apt remove lightsoff -y
apt remove quadrapassel -y
apt remove reversi -y
apt remove shotwell -y
apt remove totem -y
apt remove evolution -y
apt remove gnome-games -y
apt remove gnome-clocks -y
apt remove gnome-contacts -y
apt remove gnome-klotski -y
apt remove gnome-maps -y
apt remove gnome-sound-recorder -y
apt remove gnome-todo -y
apt remove gnome-music -y
apt remove gnome-weather -y
apt remove libreoffice-draw -y
apt remove libreoffice-impress -y

#### clean installation
apt autoremove

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

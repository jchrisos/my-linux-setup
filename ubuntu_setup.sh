#!/bin/bash
#### update system
sudo apt update && sudo apt upgrade -y

#### Utilities
sudo apt install materia-gtk-theme -y
sudo apt install papirus-icon-theme -y
sudo apt install gnome-tweak-tool -y
sudo apt install piper -y
sudo apt install psensor -y
sudo apt install gparted -y
sudo apt install stacer -y
sudo apt install net-tools -y
sudo apt install jq -y
sudo apt install speedtest-cli -y
sudo apt install ffmpeg -y
sudo apt install vlc -y
sudo apt install gnome-sushi -y
sudo apt install neofetch -y
sudo apt install python3-pip -y
sudo apt install digikam -y
sudo apt install handbrake -y
sudo snap install spotify
sudo snap install drawing


#### Dev
sudo apt install git -y
sudo apt install tilix -y
sudo apt install openfortivpn -y
sudo apt install openjdk-14-jdk -y
sudo apt install mysql-server -y
sudo apt install meld -y
sudo apt install curl -y
sudo apt install htop -y
sudo apt install ctop -y
sudo apt install vim -y
sudo apt install maven -y
sudo apt install filezilla -y
sudo snap install ngrok
sudo snap install gitkraken --classic
sudo snap install postman
sudo snap install slack --classic
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
sudo snap install datagrip --classic
sudo snap install android-studio-canary --classic
sudo snap install beekeeper-studio
sudo apt install qemu-kvm -y
sudo usermod -aG kvm $USER
sudo apt install virt-manager -y

sudo apt remove gnome-shell-extension-ubuntu-dock -y

#### clean installation
sudo apt autoremove

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

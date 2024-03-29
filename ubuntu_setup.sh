#!/bin/bash
#### update system
sudo apt update && sudo apt upgrade -y

#### Utilities
sudo apt install zip -y
sudo apt install curl -y
sudo apt install gnome-tweaks -y
sudo apt install piper -y
sudo apt install psensor -y
sudo apt install gparted -y
sudo apt install stacer -y
sudo apt install net-tools -y
sudo apt install jq -y
sudo apt install ffmpeg -y
sudo apt install vlc -y
sudo apt install gnome-sushi -y
sudo apt install neofetch -y
sudo apt install python3-pip -y
sudo apt install drawing -y
sudo apt install timeshift -y
sudo snap install spotify

#### Dev
sudo apt install git -y
sudo apt install tilix -y
sudo apt install openfortivpn -y
sudo apt install openjdk-11-jdk -y
sudo apt install meld -y
sudo apt install htop -y
sudo apt install vim -y
sudo apt install maven -y
sudo apt install filezilla -y
sudo apt install mysql-client -y
sudo snap install postman
sudo snap install gitkraken --classic
sudo snap install slack --classic
sudo apt install qemu-kvm -y
sudo usermod -aG kvm $USER
sudo apt install virt-manager -y

#### install docker
sudo apt remove docker docker-engine docker.io containerd runc -y
sudo apt install apt-transport-https  -y
sudo apt install ca-certificates  -y
sudo apt install gnupg -y
sudo apt install lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

#### running docker as non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

#### install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#### install node via nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source .bashrc
nvm install --lts

#### install sdkman and gradle
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle

#### install golang
wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.17.2.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> .bashrc
rm go1.17.2.linux-amd64.tar.gz
source .bashrc

#### remove ubuntu dock
sudo apt remove gnome-shell-extension-ubuntu-dock -y

#### clean installation
sudo apt -y --purge autoremove && sudo apt -y clean

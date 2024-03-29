#!/bin/bash
#### add cedilla with keyboard 'en_US International with dead keys'
sudo echo 'GTK_IM_MODULE=cedilla' >> /etc/environment

#### update system
sudo apt update && sudo apt upgrade -y

#### Install snap
sudo apt install snapd -y
sudo snap install core

#### Utilities
sudo apt install apt-transport-https -y
sudo apt install zip -y
sudo apt install curl -y
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
sudo apt install drawing -y
sudo apt install simplescreenrecorder -y
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
sudo apt install mariadb-client -y
sudo snap install gitkraken --classic
sudo snap install slack --classic
sudo snap install beekeeper-studio
sudo apt install qemu-kvm -y
sudo usermod -aG kvm $USER
sudo apt install virt-manager -y

#### install docker
sudo apt remove docker docker-engine docker.io containerd runc -y
sudo apt apt-transport-https  -y
sudo apt ca-certificates  -y
sudo apt gnupg -y
sudo apt lsb-release -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y

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

#### install brave-browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

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

#### install postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
sudo tar -xzf postman-linux-x64.tar.gz -C /opt
sudo ln -s /opt/Postman/Postman /usr/bin/postman
touch ~/.local/share/applications/Postman.desktop
chmod +x ~/.local/share/applications/Postman.desktop
echo '[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/app/Postman %U
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;' > ~/.local/share/applications/Postman.desktop
rm -rf postman-linux-x64.tar.gz

#### remove some softwares not used
sudo apt purge aisleriot -y
sudo apt purge five-or-more -y
sudo apt purge four-in-a-row -y
sudo apt purge hitori -y
sudo apt purge lightsoff -y
sudo apt purge quadrapassel -y
sudo apt purge iagno -y
sudo apt purge shotwell -y
sudo apt purge tali -y
sudo apt purge totem -y
sudo apt purge swell-foop -y
sudo apt purge evolution -y
sudo apt purge gnome-games -y
sudo apt purge gnome-2048 -y
sudo apt purge gnome-clocks -y
sudo apt purge gnome-chess -y
sudo apt purge gnome-contacts -y
sudo apt purge gnome-documents -y
sudo apt purge gnome-klotski -y
sudo apt purge gnome-mahjongg -y
sudo apt purge gnome-maps -y
sudo apt purge gnome-mines -y
sudo apt purge gnome-nibbles -y
sudo apt purge gnome-robots -y
sudo apt purge gnome-sound-recorder -y
sudo apt purge gnome-sudoku -y
sudo apt purge gnome-taquin -y
sudo apt purge gnome-tetravex -y
sudo apt purge gnome-todo -y
sudo apt purge gnome-music -y
sudo apt purge gnome-weather -y
sudo apt purge gnome-shell-extensions -y
sudo apt purge gnome-shell-extension-appindicator -y
sudo apt purge libreoffice* -y
sudo apt purge malcontent* -y
sudo apt purge seahorse -y

#### clean installation
sudo apt autoremove -y

reset

neofetch

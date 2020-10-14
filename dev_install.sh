#### update system
sudo apt update && sudo apt upgrade -y

#### Utilities
sudo apt install tilix -y
sudo apt install materia-gtk-theme -y
sudo apt install papirus-icon-theme -y
sudo apt install gnome-tweak-tool -y
sudo apt install piper -y
sudo apt install psensor -y
sudo apt install gparted -y
sudo apt install stacer
sudo apt install net-tools
sudo apt install jq
sudo apt install speedtest-cli
sudo apt install ffmpeg -y
sudo apt install vlc -y
sudo snap install spotify
sudo snap install drawing

#### Dev
sudo apt install openfortivpn
sudo apt install git -y
sudo apt install openjdk-14-jdk -y
sudo apt install mysql-server -y
sudo apt install meld -y
sudo apt install curl -y
sudo apt install htop -y
sudo apt install vim -y
sudo snap install ngrok
sudo snap install gitkraken --classic
sudo snap install postman
sudo snap install slack --classic
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
sudo snap install datagrip --classic
sudo snap install android-studio --classic
sudo apt install qemu-kvm
sudo usermod -aG kvm $USER

#### clean installation
sudo apt autoremove

echo 'install gnome-extensions below:'
echo '- User Themes'
echo '- OpenWeather'

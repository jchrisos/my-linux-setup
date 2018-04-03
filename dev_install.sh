#!/bin/bash

#Update system
sudo apt update -y
sudo apt upgrade -y

#Install SDKs
sudo apt install openjdk-8-jdk -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install ruby -y
sudo gem update --system
gem install compass

#Install Tools and IDEs
sudo apt install vim -y
sudo apt install git -y
sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo apt install htop -y
sudo apt install virtualbox -y
sudo apt install mysql-server -y
sudo apt install meld -y
sudo apt install ubuntu-make -y
sudo umake ide idea
sudo umake android
sudo umake ide visual-studio-code

sudo apt install curl -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle

npm install ngrok -g
npm install http-server -g
npm install yarn -g

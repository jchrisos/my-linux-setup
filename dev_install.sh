#!/bin/bash

#Update system
sudo apt update -y
sudo apt upgrade -y

#Install SDKs
sudo apt install ubuntu-make -y
sudo apt install openjdk-9-jdk -y
sudo apt install nodejs -y

#Install Tools and IDEs
sudo apt install vim -y
sudo apt install git -y
sudo apt install ubuntu-make -y
sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo apt install htop -y
sudo apt install virtualbox -y
sudo umake ide idea
sudo umake android
sudo umake ide datagrip
sudo umake ide visual-studio-code

sudo apt install curl -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install gradle

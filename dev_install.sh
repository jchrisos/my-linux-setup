#!/bin/bash

#Update system
sudo apt update -y
sudo apt upgrade -y

#Install SDKs
sudo apt install openjdk-9-jdk -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install ruby -y
sudo gem update --system
sudo gem install compass

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

#Ruby installation using rbenv to avoid gem install permisions error
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.5.1
rbenv global 2.5.1

sudo gem update --system
sudo gem install compass
sudo apt install ffmpeg

#To run android emulator
sudo apt install qemu-kvm
sudo adduser user kvm

sudo apt install apache2-utils

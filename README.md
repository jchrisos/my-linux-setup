# Linux setup
Some alias, functions and configs that I use every day.

## Ubuntu initial setup
```sh
sudo wget -qO- https://raw.githubusercontent.com/jchrisos/ubuntu-scripts/master/ubuntu_setup.sh | bash
```

## Debian initial setup
First of all, set 'user' as sudo
```sh
su - root
apt install sudo -y
usermod -aG sudo user
exit
```
Restart the system. Test user:
```sh
sudo echo 'Hello World!'
```

run script below:
```sh
sudo wget -qO- https://github.com/jchrisos/my-linux-setup/blob/master/debian_setup.sh | bash
```

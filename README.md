# Linux setup
Some alias, functions and configs that I use every day.

## First steps
Install `curl` and `startship` as `root`

```sh
apt install curl -y
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```
Add the following to the end of `~/.bashrc`
```sh
source .bashrc
```


## Ubuntu setup
```sh
sudo wget -qO- https://github.com/jchrisos/my-linux-setup/blob/master/ubuntu_setup.sh | bash
```

## Debian setup
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

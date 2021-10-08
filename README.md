# My Linux setup
Some alias, functions and configs that I use every day.

# Debian and Ubuntu fresh installation
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
The Ubuntu setup is really simple, just run the script below as `sudo`

```sh
sudo curl -o- https://github.com/jchrisos/my-linux-setup/blob/master/ubuntu_setup.sh | bash
```

## Debian setup
With Debian we need to set a `user` as sudo, my user is `jchrisos`
```sh
su - root
apt install sudo -y
usermod -aG sudo jchrisos
exit
```
Restart the system, logout does not work.
To test if user is sudo, just run the command below:
```sh
sudo echo 'Hello World!'
```

Run the script below to prepare the system:
```sh
sudo curl -o- https://github.com/jchrisos/my-linux-setup/blob/master/debian_setup.sh | bash
```
## Post installation
Install `gnome-extensions` below:
- User Themes
- OpenWeather
- Trash
- NordVPN Connect
- Docker Integration
- Dash to Panel

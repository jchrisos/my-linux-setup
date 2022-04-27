# My Linux setup
Some alias, functions and configs that I use every day.

# Debian and Ubuntu fresh installation
## First steps: Installing Curl and Starship

Install `curl` and `startship` as `root`
```sh
apt install curl -y
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
exit
```
Run the following commands:
```sh
echo 'eval "$(starship init bash)"' >> ~/.bashrc
source .bashrc
```

## Ubuntu 22.04 LTS setup
The Ubuntu setup is really simple, just run the script below as `sudo`

```sh
sudo curl -o- https://raw.githubusercontent.com/jchrisos/my-linux-setup/master/ubuntu_setup.sh | bash
```

## Debian 11 (bullseye) setup
With Debian we need to set a `user` as sudo, my user is `jchrisos`
```sh
su - root
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
sudo curl -o- https://raw.githubusercontent.com/jchrisos/my-linux-setup/master/debian_setup.sh | bash
```
## Post installation
Install `gnome-extensions` below:
- [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [Desktop Icons](https://extensions.gnome.org/extension/1465/desktop-icons/)
- [Docker Integration](https://extensions.gnome.org/extension/1065/docker-status/)
- [NordVPN Connect](https://extensions.gnome.org/extension/1595/nordvpn-connect/)
- [OpenWeather](https://extensions.gnome.org/extension/750/openweather/)
- [Removable Drive Menu](https://extensions.gnome.org/extension/7/removable-drive-menu/)
- [Trash](https://extensions.gnome.org/extension/48/trash/)
- [Tray Icons Reloaded](https://extensions.gnome.org/extension/2890/tray-icons-reloaded/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)

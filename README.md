# My Linux setup
Some alias, functions and configs that I use every day.

# Debian and Ubuntu fresh installation
## First steps
Install `curl` and `startship` as `root`

```sh
apt install curl -y
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
exit
```
Add the following to the end of `~/.bashrc`
```sh
eval "$(starship init bash)"
```

and run the command:
```sh
source .bashrc
```

## Ubuntu setup
The Ubuntu setup is really simple, just run the script below as `sudo`

```sh
sudo curl -o- https://raw.githubusercontent.com/jchrisos/my-linux-setup/master/ubuntu_setup.sh | bash
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
sudo curl -o- https://raw.githubusercontent.com/jchrisos/my-linux-setup/master/debian_setup.sh | bash
```
## Post installation
Install `gnome-extensions` below:
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Desktop Icons](https://extensions.gnome.org/extension/1465/desktop-icons/)
- [OpenWeather](https://extensions.gnome.org/extension/750/openweather/)
- [Trash](https://extensions.gnome.org/extension/48/trash/)
- [NordVPN Connect](https://extensions.gnome.org/extension/1595/nordvpn-connect/)
- [Docker Integration](https://extensions.gnome.org/extension/1065/docker-status/)
- [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [Tray Icon](https://extensions.gnome.org/extension/1503/tray-icons/)

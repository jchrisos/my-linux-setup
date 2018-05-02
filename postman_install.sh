#!/bin/bash

if [ ! -d ~/Apps ]; then
	mkdir ~/Apps
fi

cd ~/Apps

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
wget https://seeklogo.com/images/P/postman-logo-F43375A2EB-seeklogo.com.png -O postman-logo.png

if [ -d /Postman ]; then
	cd rm -r Postman
else
	tar -zxvf postman.tar.gz --remove-files
fi

cat <<EOF>>postman.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=~/Apps/Postman/postman-logo.png
Name=Postman
Exec=~/Apps/Postman/Postman
Comment=Custom Postman desktop entry
EOF

mv postman-logo.png Postman/
rm postman.tar.gz

sudo chmod +x postman.desktop
sudo mv postman.desktop ~/.local/share/applications/postman.desktop

echo "Postman installed!!"

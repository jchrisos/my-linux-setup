#!/bin/bash

#Verify and create folder /Apps
if [ ! -d ~/Apps ]; then
	mkdir ~/Apps
fi

cd ~/Apps

#Download postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

#Verify and remove older version
if [ -d /Postman ]; then
	cd rm -r Postman
else
	tar -zxvf postman.tar.gz --remove-files
fi

#Create .desktop
cat <<EOF>>postman.desktop
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon=/home/user/Apps/Postman/resources/app/assets/icon.png
Name=Postman
Exec=/home/user/Apps/Postman/Postman
Comment=Custom Postman desktop entry
EOF

#Removed downloaded file
rm postman.tar.gz

#Move desktop file to user desktop files
mv postman.desktop ~/.local/share/applications/postman.desktop

echo "Postman have been installed!!"

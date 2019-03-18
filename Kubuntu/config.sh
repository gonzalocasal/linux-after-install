#    PERSONAL SETTINGS    #
###########################

echo "################################################################"
echo "###################    USEFUL HOTKEYS  ######################"
echo "################################################################"
cp -a Files/AirPlay/toggle.sh ~/.toggle.sh
chmod +x ~/.toggle.sh

echo "################################################################"
echo "###################    WALLPAPERS   ######################"
echo "################################################################"
cp -a ~/Imágenes/Wallpapers/. ~/.local/share/backgrounds/
sed -i -e '$a\' ~/.bashrc
echo "alias walls='rm -r ~/.local/share/backgrounds/*; cp -a ~/Imágenes/Wallpapers/. ~/.local/share/backgrounds/; find ~/.local/share/backgrounds/ -type f -exec chmod 644 {} \;'" >> ~/.bashrc
source ~/.bashrc

echo "################################################################"
echo "###################    DESKTOPS FILES   ######################"
echo "################################################################"
cp -a Files/Desktops/. ~/.local/share/applications/

echo "################################################################"
echo "###################    DLNA ALIAS   ######################"
echo "################################################################"
echo "alias dlna='sudo -S <<< "PASS" pulseaudio-dlna --encoder wav'" >> ~/.bashrc
source ~/.bashrc

echo "################################################################"
echo "###################    FN LOGITECH KEYBOARD   ######################"
echo "################################################################"
sudo apt install -y gcc &&
mkdir ~/.kconfig &&
cd ~/.kconfig &&
wget https://github.com/jergusg/k380-function-keys-conf/archive/v1.0.tar.gz &&
tar -xvzf v1.0.tar.gz &&
cd k380-function-keys-conf-1.0/ &&
./build.sh &&
sudo ./k380_conf -d /dev/hidraw1 -f off &&
sudo cp 80-k380.rules /etc/udev/rules.d/ && 
sudo udevadm control --reload

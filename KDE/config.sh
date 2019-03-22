#    PERSONAL SETTINGS    #
###########################

echo "################################################################"
echo "###################    AIRPLAY  ######################"
echo "################################################################"
git clone https://github.com/mel00010/OmniPause.git
cd OmniPause/
sudo make install
cd ..
cp -a Files/AirPlay/toggle.sh ~/.toggle.sh
chmod +x ~/.toggle.sh

echo "################################################################"
echo "###################    WALLPAPERS   ######################"
echo "################################################################"
sudo cp -a ~/Imágenes/Wallpapers/. /usr/share/wallpapers/
sed -i -e '$a\' ~/.bashrc
echo "alias walls='sudo rm -r /usr/share/wallpapers/*; sudo cp -a ~/Imágenes/Wallpapers/. /usr/share/wallpapers/;'" >> ~/.bashrc
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
sudo cp ~/.kconfig/k380-function-keys-conf-1.0/80-k380.rules /etc/udev/rules.d/ && sudo udevadm control --reload


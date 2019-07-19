#    PERSONAL SETTINGS    #
###########################

echo "################################################################"
echo "###################    AIRPLAY  ######################"
echo "################################################################"
cd Files/AirPlay
sudo make install
cp -a toggle.sh ~/.toggle.sh
chmod +x ~/.toggle.sh
cd ..
cd ..

echo "################################################################"
echo "###################    WALLPAPERS   ######################"
echo "################################################################"
sudo cp -a ~/Imágenes/Wallpapers/. /usr/share/wallpapers/
sed -i -e '$a\' ~/.bashrc
echo "alias walls='sudo -S <<< "PASS" rm -r /usr/share/wallpapers/*; sudo cp -a ~/Imágenes/Wallpapers/. /usr/share/wallpapers/;'" >> ~/.bashrc
source ~/.bashrc

echo "################################################################"
echo "###################    DESKTOPS FILES   ######################"
echo "################################################################"
cp -a Files/Desktops/. ~/.local/share/applications/

echo "################################################################"
echo "###################    THEME   ######################"
echo "################################################################"
kwriteconfig5 --file ~/.config/plasmarc --group Theme --key name breeze

echo "################################################################"
echo "###################    PLANKTHEME   ######################"
echo "################################################################"
cp -r Files/Themes/plank-custom ~/.local/share/plank/themes/plank-custom

echo "################################################################"
echo "###################    FONTS   ######################"
echo "################################################################"
mkdir ~/.fonts
cp -a Files/Fonts/. ~/.fonts && sudo fc-cache -f -v

echo "################################################################"
echo "###################    SET AS WALLPAPER   ######################"
echo "################################################################"
mkdir ~/.local/share/kservices5
mkdir ~/.local/share/kservices5/ServiceMenus
cp -a Files/SetAsWallpaper.desktop ~/.local/share/kservices5/ServiceMenus/

echo "################################################################"
echo "###################   SETTINGS   ######################"
echo "################################################################"
yes | cp Files/Config/kwinrc  ~/.config/
yes | cp Files/Config/kglobalshortcutsrc  ~/.config/
yes | cp Files/Config/khotkeysrc  ~/.config/
yes | cp Files/Config/xscreensaver  ~/.xscreensaver
yes | cp Files/Config/autostart/xscreensaver-properties.desktop ~/.config/autostart/
yes | cp Files/Config/Clementine.conf  ~/.config/Clementine/

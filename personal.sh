###########################
#    PERSONAL SETTINGS    #
###########################

echo "################################################################"
echo "###################    NAUTILUS SETTINGS  ######################"
echo "################################################################"
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gtk.Settings.FileChooser show-hidden false 

echo "################################################################"
echo "###################    ICONS   ######################"
echo "################################################################"
mkdir ~/.local/share/icons/Paper/
cp -R Files/Paper/ ~/.local/share/icons/Paper/

echo "################################################################"
echo "###################    WALLPAPERS   ######################"
echo "################################################################"
cp -a ~/Imágenes/Wallpapers/. ~/.local/share/backgrounds/

echo "################################################################"
echo "###################    DESKTOPS FILES   ######################"
echo "################################################################"
cp -a Files/Desktops/. ~/.local/share/applications/

echo "################################################################"
echo "###################    REPOS   ######################"
echo "################################################################"
mkdir ~/Repos
cd ~/Repos
git clone https://github.com/gonzalocasal/colgado.tv.git

echo "################################################################"
echo "###################    HOME FOLDER   ######################"
echo "################################################################"
echo 'XDG_DESKTOP_DIR="$HOME/.config/desktop"' >> ~/.config/user-dirs.dirs
echo 'enabled=False' >> ~/.config/user-dirs.dirs



echo "################################################################"
echo "###################    NATURAL SCROLL DISABLE   ######################"
echo "################################################################"
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false


###########################
#    SUDO                 #
###########################


echo "################################################################"
echo "###################    ARC THEME   ######################"
echo "################################################################"
rm -rf /tmp/arc-theme
sudo apt-get install build-essential autoconf automake pkg-config libgtk-3.0 libgtk-3-dev -y
git clone https://github.com/horst3180/arc-theme --depth 1 /tmp/arc-theme
cd /tmp/arc-theme
sh autogen.sh --prefix=/usr
sudo make install
rm -rf /tmp/arc-theme
sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
sudo apt install arc-theme -y
sleep 10


echo "################################################################"
echo "###################    NVIDIA DRIVERS   ######################"
echo "################################################################"
sudo apt install -y nvidia-384 nvidia-prime
sleep 10

echo "################################################################"
echo "###################    HIDE MEGASYNC IN WINGPANEL   ######################"
echo "################################################################"
sudo sh -c "echo 'megasync' >> /etc/wingpanel.d/ayatana.blacklist"
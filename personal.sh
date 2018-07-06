###########################
#    PERSONAL SETTINGS    #
###########################

echo "################################################################"
echo "###################    NAUTILUS SETTINGS  ######################"
echo "################################################################"
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gtk.Settings.FileChooser show-hidden false 

echo "################################################################"
echo "###################    SLINGSHOT SETTINGS  ######################"
echo "################################################################"
gsettings set io.elementary.desktop.wingpanel.applications-menu columns 7
gsettings set io.elementary.desktop.wingpanel.applications-menu rows 5

echo "################################################################"
echo "###################    ICONS   ######################"
echo "################################################################"
mkdir ~/.local/share/icons/Paper/
cp -R Files/Paper/ ~/.local/share/icons/Paper/

echo "################################################################"
echo "###################    THEME   ######################"
echo "################################################################"
cp -R Files/Theme/. ~/.themes

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

###########################
#    PERSONAL SETTINGS    #
###########################

#ECLIPSE SETTINGS
cp -rf Files/Eclipse/eclipse.ini /home/gonzalo/Programas/eclipse/

# WINDOWS KEY
gsettings set org.gnome.mutter overlay-key "'Super_L'"
gsettings set org.pantheon.desktop.gala.behavior overlay-action "'wingpanel --toggle-indicator=app-launcher'"

# SUDO WARNING
gsettings set org.pantheon.terminal.settings unsafe-paste-alert false

# NAUTILUS SETTINGS
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gtk.Settings.FileChooser show-hidden false 

# ICONS
mkdir ~/.local/share/icons
cp -R Files/Paper/ ~/.local/share/icons/Paper/

# WALLPAPERS
cp -a ~/Imágenes/Wallpapers/. ~/.local/share/backgrounds/

# APPS
cp -a Files/Desktops/. ~/.local/share/applications/

# REPOS
mkdir ~/Repos
cd ~/Repos
git clone https://github.com/gonzalocasal/colgado.tv.git

# HOME FOLDER
echo 'XDG_DESKTOP_DIR="$HOME/.config/desktop"' >> ~/.config/user-dirs.dirs
echo 'enabled=False' >> ~/.config/user-dirs.dirs

# HIDDE SNAP FOLDER
touch ~/.hidden
echo 'snap' >> ~/.hidden

# NATURAL SCROLLING DISABLE
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false

###########################
#    PERSONAL SETTINGS    #
###########################


# SUDO WARNING
gsettings set org.pantheon.terminal.settings unsafe-paste-alert false

# NAUTILUS SETTINGS
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gtk.Settings.FileChooser show-hidden false 

# ICONS
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


###########################
#    SUDO                 #
###########################


# THEME
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

# NVIDIA DRIVERS
sudo apt install -y nvidia-384 nvidia-prime
sleep 10

# HIDE MEGASYNC IN WINGPANEL
sudo sh -c "echo 'megasync' >> /etc/wingpanel.d/ayatana.blacklist"
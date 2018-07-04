# UPDGRADE
sudo apt dist-upgrade -y
sleep 5

# EXTRAS
sudo apt install -y software-properties-common python-software-properties
sleep 5

# FLATPACK APPS
sudo add-apt-repository --yes ppa:alexlarsson/flatpak
sudo apt update
sudo apt install -y flatpak
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo

# PULSE EFFECT
flatpak install flathub com.github.wwmm.pulseeffects -y
sleep 5

# VLC
sudo add-apt-repository ppa:videolan/stable-daily --yes
sudo apt update
sudo apt install vlc -y

# LIBRE OFFICE
sudo add-apt-repository ppa:libreoffice/ppa --yes
sudo apt update
sudo apt install libreoffice -y
sudo apt install libreoffice-l10n-es -y
sudo apt install libreoffice-style-sifr -y
sleep 5

# GPARTED
sudo apt install gparted -y
sleep 5

# SPOTIFY
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y
sleep 5

# CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt install -y -f
sudo rm google-chrome*.deb
sleep 5

# SKYPE
wget https://go.skype.com/skypeforlinux-64.deb 
sudo dpkg -i ./skype*.deb 
sudo apt install -y -f 
rm skype*.deb
sleep 5

# FIREFOX
sudo apt update
sudo apt install -y firefox
sleep 5

# BITTORRENT
sudo apt install -y transmission
sleep 5

# UNRAR
sudo apt install -y unrar
sleep 5

# ELEMENTARY PLUS
sudo apt install -y software-properties-common
sudo add-apt-repository --yes ppa:philip.scott/elementary-tweaks
sudo apt update
sudo apt install -y elementary-tweaks
sleep 5

# GIMP
sudo add-apt-repository --yes ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install -y gimp
sleep 5

# NOMACS
sudo add-apt-repository --yes ppa:nomacs/stable
sudo apt update
sudo apt install -y nomacs
sleep 5

# NAUTILUS
sudo apt install -y nautilus
sleep 5

# RHYTHMBOX
sudo add-apt-repository --yes ppa:fossfreedom/rhythmbox
sudo apt update
sudo apt install -y rhythmbox
sleep 5
sudo add-apt-repository --yes ppa:fossfreedom/rhythmbox-plugins
sudo apt update
sudo apt install -y rhythmbox-plugin-alternative-toolbar
sleep 5
sudo apt install -y rhythmbox-plugin-close-on-hide
sleep 5

# PUDDLETAG
sudo add-apt-repository --yes ppa:nilarimogard/webupd8
sudo apt update
sudo apt install -y puddletag
sleep 5

# MP3 GAIN
sudo add-apt-repository --yes ppa:cfgnunes/ppa
sudo apt update
sudo apt install -y wxmp3gain
sleep 5

# AUDIO RECORDER
sudo add-apt-repository --yes ppa:audio-recorder/ppa
sudo apt update
sudo apt install -y audio-recorder
sleep 5

# AUDACITY
sudo apt update
sudo apt install -y audacity
sleep 5

# MEGASYNC
wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
sudo dpkg -i ./megasync*.deb
sudo apt install -y -f
sudo rm megasync*.deb
sleep 5

# GIT
sudo apt install -y git
sudo apt install -y meld
sleep 5

# SUBLIME TEXT, PLUGINS: SETI UI, COLOR PICKER
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# PYTHON LOADER
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpeas/libpeas-1.0-0-python3loader_1.16.0-1ubuntu2_amd64.deb
sudo dpkg -i ./libpeas*.deb
sudo rm libpeas*.deb
sleep 5


# APACHE PHP
sudo apt install -y apache2
sudo apt install -y php libapache2-mod-php php-mysql php-curl php-gd php-pear php-imagick php-imap php-mcrypt php-recode php-tidy php-xmlrpc
sudo a2enmod rewrite
sudo service apache2 restart

sleep 5

# SQLECTRON
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.29.0/Sqlectron_1.29.0_amd64.deb
sudo dpkg -i ./Sqlectron*.deb
sudo apt install -y -f
sudo rm Sqlectron*.deb
sleep 5

# MYSQL
sudo apt update
sudo apt install -y mysql-server
sleep 5

# JAVA
sudo add-apt-repository --yes ppa:webupd8team/java
sudo apt update
sudo apt install -y oracle-java8-installer
sleep 5

# ECLIPSE
sudo add-apt-repository --yes ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install -y ubuntu-make
umake ide eclipse-jee
sleep 5

# STEAM
sudo add-apt-repository --yes multiverse
sudo apt update 
sudo apt install -y steam
sleep 5

#VIRTUAL BOX
sudo apt install -y virtualbox virtualbox-ext-pack
sleep 5

# CLEANUP
sudo apt remove -y noise
sudo apt -y autoremove
sudo apt clean
sleep 5
sudo apt-get purge pantheon-photos pantheon-photos-common
sudo apt remove audience
sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled
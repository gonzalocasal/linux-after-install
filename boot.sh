# UPDGRADE
sudo apt dist-upgrade -y
sleep 10

# EXTRAS
sudo apt-get install -y software-properties-common python-software-properties
sleep 10

# FLATPACK APPS
sudo add-apt-repository --yes ppa:alexlarsson/flatpak
sudo apt update
sudo apt install -y flatpak
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo

# SKYPE
flatpak install flathub com.skype.Client -y

# SPOTIFY
flatpak install flathub com.spotify.Client -y

# VLC
flatpak install flathub org.videolan.VLC -y

# WEATHER APP
flatpak install flathub com.github.bitseater.weather -y

# PULSE EFFECT
flatpak install flathub com.github.wwmm.pulseeffects -y

sleep 10

# LIBRE OFFICE
sudo add-apt-repository ppa:libreoffice/ppa --yes
sudo apt update
sudo apt install libreoffice -y
sudo apt install libreoffice-l10n-es -y
sudo apt install libreoffice-style-sifr -y
sleep 10


# CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt-get install -y -f
sudo rm google-chrome*.deb
sleep 10

# FIREFOX
sudo apt-get update
sudo apt-get install -y firefox
sleep 10

# BITTORRENT
sudo apt install -y transmission
sleep 10

# UNRAR
sudo apt install -y unrar
sleep 10

# ELEMENTARY PLUS
sudo apt-get install -y software-properties-common
sudo add-apt-repository --yes ppa:philip.scott/elementary-tweaks
sudo apt-get update
sudo apt-get install -y elementary-tweaks
sleep 10

# GIMP
sudo add-apt-repository --yes ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install -y gimp
sleep 10

# NAUTILUS
sudo apt install -y nautilus
sleep 10

# RHYTHMBOX
sudo add-apt-repository --yes ppa:fossfreedom/rhythmbox
sudo apt update
sudo apt install -y rhythmbox
sleep 10
sudo add-apt-repository --yes ppa:fossfreedom/rhythmbox-plugins
sudo apt update
sudo apt install -y rhythmbox-plugin-alternative-toolbar
sleep 10
sudo apt install -y rhythmbox-plugin-close-on-hide
sleep 10

# PUDDLETAG
sudo add-apt-repository --yes ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install -y puddletag
sleep 10

# MP3 GAIN
sudo add-apt-repository --yes ppa:cfgnunes/ppa
sudo apt update
sudo apt install -y wxmp3gain
sleep 10

# AUDIO RECORDER
sudo add-apt-repository --yes ppa:audio-recorder/ppa
sudo apt-get update
sudo apt-get install -y audio-recorder
sleep 10

# AUDACITY
sudo apt-get update
sudo apt install -y audacity
sleep 10

# MEGASYNC
wget https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb
sudo dpkg -i ./megasync*.deb
sudo apt-get install -y -f
sudo rm megasync*.deb
sleep 10

# GIT
sudo apt install -y git
sudo apt install -y meld
sleep 10

# SUBLIME TEXT, PLUGINS: SETI UI, COLOR PICKER
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

# PYTHON LOADER
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpeas/libpeas-1.0-0-python3loader_1.16.0-1ubuntu2_amd64.deb
sudo dpkg -i ./libpeas*.deb
sudo rm libpeas*.deb
sleep 10


# APACHE PHP
sudo apt-get install -y apache2
sudo apt-get install -y php libapache2-mod-php php-mysql php-curl php-gd php-pear php-imagick php-imap php-mcrypt php-recode php-tidy php-xmlrpc
sudo yes | sudo cp -rf Files/Apache/000-default.conf /etc/apache2/sites-available/
sudo yes | sudo cp -rf Files/Apache/apache2.conf /etc/apache2/
sudo a2enmod rewrite
sudo service apache2 restart
sleep 10

# SQLECTRON
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.29.0/Sqlectron_1.29.0_amd64.deb
sudo dpkg -i ./Sqlectron*.deb
sudo apt-get install -y -f
sudo rm Sqlectron*.deb
sleep 10

# MYSQL
sudo apt-get update
sudo apt-get install -y mysql-server
sleep 10

# JAVA
sudo add-apt-repository --yes ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
sleep 10

# ECLIPSE
sudo add-apt-repository --yes ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install -y ubuntu-make
umake ide eclipse-jee
sleep 10

# STEAM
sudo add-apt-repository --yes multiverse
sudo apt update 
sudo apt install -y steam
sleep 10

#VIRTUAL BOX
sudo apt install -y virtualbox virtualbox-ext-pack
sleep 10

# CLEANUP
sudo apt remove -y noise
sudo apt-get -y autoremove
sudo apt-get clean
sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled
sleep 10


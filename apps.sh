echo "################################################################"
echo "###################    UPGRADE   ######################"
echo "################################################################"
sudo apt dist-upgrade -y
sleep 10

echo "################################################################"
echo "###################    EXTRAS   ######################"
echo "################################################################"
sudo apt install -y software-properties-common python-software-properties
sudo apt install -y gnome-themes-standard
sudo apt install -y gtk2-engines-pixbuf:i386
sleep 10

echo "################################################################"
echo "###################    JAVA   ######################"
echo "################################################################"
wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz" -O jdk-8u181-linux-x64.tar.gz
sudo mkdir /opt/jdk
sudo tar -zxf jdk-8u181-linux-x64.tar.gz -C /opt/jdk
sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_181/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_181/bin/javac 100
sudo echo -e "\nexport JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")" >> ~/.bashrc
sleep 10

echo "################################################################"
echo "###################    BLUETOOTH   ######################"
echo "################################################################"
sudo add-apt-repository ppa:bluetooth/bluez --yes
sudo apt -y install bluez
sleep 10

echo "################################################################"
echo "###################    VLC   ######################"
echo "################################################################"
sudo apt update
sudo apt install vlc -y

echo "################################################################"
echo "###################    LIBRE OFFICE   ######################"
echo "################################################################"
sudo add-apt-repository ppa:libreoffice/ppa --yes
sudo apt update
sudo apt install libreoffice -y
sudo apt install libreoffice-l10n-es -y
sudo apt install libreoffice-style-sifr -y
sleep 10

echo "################################################################"
echo "###################    GPARTED   ######################"
echo "################################################################"
sudo apt install gparted -y
sleep 10

echo "################################################################"
echo "###################    SPOTIFY   ######################"
echo "################################################################"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y
sleep 10

echo "################################################################"
echo "###################    CHROME   ######################"
echo "################################################################"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ./google-chrome*.deb
sudo apt install -y -f
sudo rm google-chrome*.deb
sleep 10

echo "################################################################"
echo "###################    SKYPE   ######################"
echo "################################################################"
wget https://go.skype.com/skypeforlinux-64.deb 
sudo dpkg -i ./skype*.deb 
sudo apt install -y -f 
rm skype*.deb
sleep 10

echo "################################################################"
echo "###################    FIREFOX   ######################"
echo "################################################################"
sudo apt update
sudo apt install -y firefox
sleep 10

echo "################################################################"
echo "###################    BITTORRENT   ######################"
echo "################################################################"
sudo apt install -y transmission
sleep 10

echo "################################################################"
echo "###################    UNRAR   ######################"
echo "################################################################"
sudo apt install -y unrar
sleep 10

echo "################################################################"
echo "###################    ELEMENTARY TWEAKS   ######################"
echo "################################################################"
sudo apt install -y software-properties-common
sudo add-apt-repository --yes ppa:philip.scott/elementary-tweaks
sudo apt update
sudo apt install -y elementary-tweaks
sleep 10

echo "################################################################"
echo "###################    GIMP   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install -y gimp
sleep 10

echo "################################################################"
echo "###################    NOMACS   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:nomacs/stable
sudo apt update
sudo apt install -y nomacs
sleep 10

echo "################################################################"
echo "###################    STEAM   ######################"
echo "################################################################"
sudo add-apt-repository --yes multiverse
sudo apt update 
sudo apt install -y steam
sleep 10

echo "################################################################"
echo "###################    NAUTILUS   ######################"
echo "################################################################"
sudo apt install -y nautilus
sleep 10

echo "################################################################"
echo "###################    RHYTHMBOX   ######################"
echo "################################################################"
sudo apt install -y rhythmbox
sleep 10
sudo add-apt-repository --yes ppa:fossfreedom/rhythmbox-plugins
sudo apt update
sudo apt install -y rhythmbox-plugin-alternative-toolbar
sleep 10
sudo apt install -y rhythmbox-plugin-close-on-hide
sleep 10


echo "################################################################"
echo "###################    PUDDLETAG   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:nilarimogard/webupd8
sudo apt update
sudo apt install -y puddletag
sleep 10

echo "################################################################"
echo "###################    MP3 GAIN   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:cfgnunes/ppa
sudo apt update
sudo apt install -y wxmp3gain
sleep 10

echo "################################################################"
echo "###################    AUDIO RECORDER   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:audio-recorder/ppa
sudo apt update
sudo apt install -y audio-recorder
sleep 10

echo "################################################################"
echo "###################    AUDACITY   ######################"
echo "################################################################"
sudo apt update
sudo apt install -y audacity
sleep 10

echo "################################################################"
echo "###################    MEGASYNC   ######################"
echo "################################################################"
wget https://mega.nz/linux/MEGAsync/xUbuntu_18.04/amd64/megasync-xUbuntu_18.04_amd64.deb
sudo dpkg -i ./megasync*.deb
sudo apt install -y -f
sudo rm megasync*.deb
sleep 10

echo "################################################################"
echo "###################    GIT   ######################"
echo "################################################################"
sudo apt install -y git
sudo apt install -y meld
sleep 10

echo "################################################################"
echo "###################    SUBLIME TEXT   ######################"
echo "################################################################"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

echo "################################################################"
echo "###################    PYTHON LOADER   ######################"
echo "################################################################"
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpeas/libpeas-1.0-0-python3loader_1.16.0-1ubuntu2_amd64.deb
sudo dpkg -i ./libpeas*.deb
sudo rm libpeas*.deb
sleep 10


echo "################################################################"
echo "###################    SQLECTRON   ######################"
echo "################################################################"
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.29.0/Sqlectron_1.29.0_amd64.deb
sudo dpkg -i ./Sqlectron*.deb
sudo apt install -y -f
sudo rm Sqlectron*.deb
sleep 10

echo "################################################################"
echo "###################    MYSQL   ######################"
echo "################################################################"
sudo apt update
sudo apt install -y mysql-server
sleep 10

echo "################################################################"
echo "###################    ECLIPSE   ######################"
echo "################################################################"
sudo add-apt-repository --yes ppa:ubuntu-desktop/ubuntu-make
sudo apt update
sudo apt install -y ubuntu-make
umake ide eclipse-jee
sed -i '1i2' ~/Programas/eclipse/eclipse.ini 
sed -i '1i--launcher.GTK_version' ~/Programas/eclipse/eclipse.ini
sleep 10

echo "################################################################"
echo "###################    VIRTUAL BOX   ######################"
echo "################################################################"
sudo apt install -y virtualbox virtualbox-ext-pack
sleep 10

echo "################################################################"
echo "###################    CLEANUP   ######################"
echo "################################################################"
sudo apt purge -y noise
sudo apt purge -y pantheon-photos
sudo apt purge -y pantheon-photos-common
sudo apt purge -y audience
sudo apt purge -y epiphany-browser
sudo apt purge -y io.elementary.code
sleep 10
sudo apt -y autoremove
sudo apt clean
sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled

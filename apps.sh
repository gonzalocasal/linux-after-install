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
echo "###################  WING PANEL  ######################"
echo "################################################################"
wget https://github.com/mdh34/elementary-indicators/releases/download/0.1/indicator-application-patched.deb
wget https://launchpad.net/~elementary-os/+archive/ubuntu/stable/+files/wingpanel-indicator-ayatana_2.0.3+r27+pkg17~ubuntu0.4.1.1_amd64.deb
sudo dpkg -i ./indicator*.deb
sudo dpkg -i ./wingpanel-indicator*.deb
sudo rm ./indicator*.deb
sudo rm ./wingpanel-indicator*.deb

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
echo "###################    DISKS   ######################"
echo "################################################################"
sudo apt install gnome-disk-utility -y
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
echo "###################    TEAM VIEWER   ######################"
echo "################################################################"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i ./teamviewer*.deb
sudo apt install -y -f
sudo rm teamviewer*.deb
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
sudo apt install -y totem ffmpegthumbnailer
sudo apt install -y nautilus-share
sudo apt install -y samba
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
echo "###################  AIRPLAY SUPPORT  ######################"
echo "################################################################"
sudo apt install -y pulseaudio-dlna pavucontrol
sudo apt install -y paprefs pulseaudio-module-raop
#paprefs
sleep 10

echo "################################################################"
echo "###################   PUDDLE TAG   ######################"
echo "################################################################"
sudp apt install -y puddletag
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
echo "###################    SOUND CONVERTER   ######################"
echo "################################################################"
sudo apt install -y soundconverter
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
echo "###################   ZOOM  ######################"
echo "################################################################"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i ./zoom*.deb
sudo apt install -y -f
sudo rm zoom*.deb
sleep 10

echo "################################################################"
echo "###################   MAILSPRING  ######################"
echo "################################################################"
wget https://updates.getmailspring.com/download?platform=linuxDeb
sudo dpkg -i ./mailspring*.deb
sudo apt install -y -f
sudo rm mailspring*.deb
sleep 10

echo "################################################################"
echo "###################    PYTHON LOADER   ######################"
echo "################################################################"
wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpeas/libpeas-1.0-0-python3loader_1.16.0-1ubuntu2_amd64.deb
sudo dpkg -i ./libpeas*.deb
sudo rm libpeas*.deb
sleep 10


echo "################################################################"
echo "###################    DBeaver   ######################"
echo "################################################################"
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i ./dbeaver*.deb
sudo apt install -y -f
sudo rm dbeaver*.deb
sleep 10

echo "################################################################"
echo "###################    MYSQL   ######################"
echo "################################################################"
sudo apt update
sudo apt install -y mysql-server
sleep 10

echo "################################################################"
echo "###################    VIRTUAL BOX   ######################"
echo "################################################################"
sudo apt install -y virtualbox virtualbox-ext-pack
sleep 10

echo "################################################################"
echo "###################    JAVA   ######################"
echo "################################################################"
sudo add-apt-repository ppa:webupd8team/java --yes
sudo apt update
sudo apt install -y oracle-java8-installer
sleep 10

echo "################################################################"
echo "###################    INTELLIJ ######################"
echo "################################################################"
mkdir ~/Programas
mkdir ~/Programas/IntelliJ
mkdir ~/Programas/IntelliJ/jdk
wget -O intellij.tar.gz https://download-cf.jetbrains.com/idea/ideaIC-2018.2.5.tar.gz
wget -O jdk.tar.gz https://bintray.com/jetbrains/intellij-jdk/download_file?file_path=jbsdk8u112b783_linux_x64.tar.gz
tar -zxf intellij.tar.gz -C ~/Programas/IntelliJ
tar -zxf jdk.tar.gz -C ~/Programas/IntelliJ/jdk


echo "################################################################"
echo "###################    CLEANUP   ######################"
echo "################################################################"
sudo apt purge -y gstreamer1.0-fluendo-mp3
sudo apt purge -y noise
sudo apt purge -y pantheon-photos
sudo apt purge -y pantheon-photos-common
sudo apt purge -y audience
sudo apt purge -y epiphany-browser
sudo apt purge -y io.elementary.code
sudo apt purge -y openjdk*
sleep 10
sudo apt -y autoremove
sudo apt clean
sudo mv /etc/xdg/autostart/at-spi-dbus-bus.desktop /etc/xdg/autostart/at-spi-dbus-bus.disabled

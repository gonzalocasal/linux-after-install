echo "################################################################"
echo "###################    UPGRADE   ######################"
echo "################################################################"
sudo apt dist-upgrade -y
sleep 10

echo "################################################################"
echo "###################    EXTRAS   ######################"
echo "################################################################"
sudo apt install -y software-properties-common python-software-properties
sudo apt install -y pulseaudio-dlna pavucontrol
sudo apt install -y fonts-roboto
sudo apt install -y libnotify-bin
sudo apt install -y notify-osd
sleep 10


echo "################################################################"
echo "###################  SLINGSCOLD ######################"
echo "################################################################"
sudo add-apt-repository ppa:noobslab/macbuntu --yes
sudo apt update
sudo apt -y install slingscold

echo "################################################################"
echo "###################  SCREENSAVER  ######################"
echo "################################################################"
sudo apt -y install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra


echo "################################################################"
echo "###################    EMBY   ######################"
echo "################################################################"
wget -O emby.deb https://github.com/MediaBrowser/Emby.Releases/releases/download/4.0.2.0/emby-server-deb_4.0.2.0_amd64.deb
sudo dpkg -i ./emby.deb
sudo apt install -y -f
sudo rm emby.deb
sleep 10

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
sudo apt install -y paprefs pulseaudio-module-raop
#paprefs
sleep 10

echo "################################################################"
echo "###################   PUDDLE TAG   ######################"
echo "################################################################"
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
wget -O zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i ./zoom.deb
sudo apt install -y -f
sudo rm zoom.deb
sleep 10

echo "################################################################"
echo "###################   MAILSPRING  ######################"
echo "################################################################"
wget -O mailspring.deb https://updates.getmailspring.com/download?platform=linuxDeb
sudo dpkg -i ./mailspring.deb
sudo apt install -y -f
sudo rm mailspring.deb
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
echo "###################    INTELLIJ ######################"
echo "################################################################"
mkdir ~/Programas
mkdir ~/Programas/IntelliJ
mkdir ~/Programas/IntelliJ/jdk
wget -O intellij.tar.gz https://download.jetbrains.com/idea/ideaIC-2018.3.4.tar.gz
wget -O jdk.tar.gz https://bintray.com/jetbrains/intellij-jdk/download_file?file_path=jbsdk8u112b783_linux_x64.tar.gz
tar -zxf intellij.tar.gz -C ~/Programas/IntelliJ
tar -zxf jdk.tar.gz -C ~/Programas/IntelliJ/jdk


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
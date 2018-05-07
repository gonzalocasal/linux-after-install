###########################
#    PERSONAL SETTINGS    #
###########################


# THEME
sudo dpkg -i Files/Theme/arc.deb
sudo apt install -f -y
sleep 10

# NVIDIA DRIVERS
sudo apt install -y nvidia-384 nvidia-prime
sleep 10


# CLEANUP FLATPAK .DESKTOPS FILES
sudo rm /var/lib/flatpak/app/org.libreoffice.LibreOffice/current/active/export/share/applications/*
sudo rm /var/lib/flatpak/app/com.github.bitseater.weather/current/active/export/share/applications/*
sudo rm /var/lib/flatpak/app/com.github.wwmm.pulseeffects/current/active/export/share/applications/*


# HIDE MEGASYNC IN WINGPANEL
sudo sh -c "echo 'megasync' >> /etc/wingpanel.d/ayatana.blacklist"

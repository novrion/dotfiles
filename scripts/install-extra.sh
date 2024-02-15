#!/bin/bash

# ----- Extra install script for Novrion's Arch Linux -----

cd ..

res="resources"
file="$res/packages-extra"


# Install extra packages
raw=$(cat $file)
packages="${raw//$'\n'/ }"
sudo pacman -S $packages

# .config
cp -r $res/.config-extra/ $HOME/.config/

# User configuration
mkdir $HOME/usb
mkdir $HOME/dl
mkdir $HOME/git
mkdir $HOME/src
mkdir $HOME/tmp

mkdir -p $HOME/media/pictures/wallpapers
sudo cp -r $res/wallpapers $HOME/media/pictures/wallpapers/

cp $res/MANUAL $HOME/

# Fonts
sudo cp $res/fonts/MxPlus_IBM_VGA_9x16.ttf /usr/share/fonts/

# GTK
./$res/GTK/install-gtk.sh


echo "============================================="
echo "=======  Finished Extra Installation  ======="
echo "============================================="
exit 0

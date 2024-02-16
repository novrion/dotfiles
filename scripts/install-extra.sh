#!/bin/bash

# ----- Extra install script for Novrion's Arch Linux -----

res="resources"
file="$res/packages-extra"

# Multilib packages
sudo cp $res/pacman.conf /etc/pacman.conf
sudo pacman -Sy

# Install extra packages
raw=$(cat $file)
packages="${raw//$'\n'/ }"
sudo pacman -S $packages

# .config
#mv $res/.config-extra $res/.config
#sudo cp -r $res/.config $HOME/
#mv $res/.config $res/.config-extra

# User configuration
mkdir $HOME/usb
mkdir $HOME/dl
mkdir $HOME/git
mkdir $HOME/src
mkdir $HOME/tmp
cp $res/MANUAL $HOME/

mkdir -p $HOME/media/pictures/wallpapers
tar -xf $res/wallpapers.tar.gz
cp -r wallpapers $HOME/media/pictures/
rm -r wallpapers

# Fonts
sudo cp $res/fonts/MxPlus_IBM_VGA_9x16.ttf /usr/share/fonts

# GTK
#./$res/GTK/install-gtk.sh


echo "============================================="
echo "=======  Finished Extra Installation  ======="
echo "============================================="
exit 0

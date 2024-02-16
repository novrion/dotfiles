#!/bin/bash

# ----- Minimal install script for Novrion's Arch Linux -----

res="resources"
file="$res/packages-minimal"


# TODO timezone
# System settings
sudo cp $res/vconsole.conf /etc/vconsole.conf
sudo locale-gen

# Install minimal packages
raw=$(cat $file)
packages="${raw//$'\n'/ }"
sudo pacman -S $packages

# .config
mv $res/.config-minimal $res/.config
sudo cp -r $res/.config $HOME/
mv $res/.config $res/.config-minimal

# .xinitrc
sudo cp $res/.xinitrc $HOME/.xinitrc

# vim
sudo cp $res/.config-minimal/vim/colors/tokyonight.vim /usr/share/vim/vim91/colors/
cp $res/.vimrc $HOME/.vimrc
sudo cp $res/vimrc /etc/vimrc

# Fonts
sudo pacman -S ttf-hack


echo "============================================="
echo "======  Finished Minimal Installation  ======"
echo "============================================="
exit 0

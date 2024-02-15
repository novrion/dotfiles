#!/bin/bash

# ----- Minimal install script for Novrion's Arch Linux -----

cd ..

res="resources"
file="$res/packages-minimal"


# System settings
sudo cp $res/vconsole.conf /etc/vconsole.conf
sudo locale-gen

# Install minimal packages
raw=$(cat $file)
packages="${raw//$'\n'/ }"
sudo pacman -S $packages

# .config
cp -r $res/.config-minimal/ $HOME/.config/

# .xinitrc
cp $res/.xinitrc $HOME/.xinitrc

# vim
cp $res/.config-minimal/vim/colors/tokyonight.vim /usr/share/vim/vim91/colors/
cp $res/.vimrc $HOME/.vimrc
cp $res/vimrc /etc/vimrc

# Fonts
sudo pacman -S ttf-hack


echo "============================================="
echo "======  Finished Minimal Installation  ======"
echo "============================================="
exit 0

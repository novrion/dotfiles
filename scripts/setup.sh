#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <system>"
	echo "\t<system> : arch, macos"
fi

if [ "$1" = "arch" ]; then
	echo "Setting up Arch Linux system..."
elif [ "$1" = "macos" ]; then
	echo "Setting up MacOS system..."
else
	echo "Unsupported system: $1"
fi



chmod +x scripts/*.sh
mkdir -p $HOME/.config/
mkdir -p $HOME/.config/scripts/
rm $HOME/.config/scripts/setup.sh
mkdir -p $HOME/git/
cp .bashrc $HOME/

cp -r scripts/ $HOME/.config/scripts/
cp -r nvim/ $HOME/.config/
cp -r tmux/ $HOME/.config/
cp -r btop/ $HOME/.config/
cp -r yazi/ $HOME/.config/



########## Arch Linux ##########
if [ "$1" = "arch" ]; then
	./scripts/install_arch.sh
	cp -r bspwm/ $HOME/.config/
	cp -r sxhkd/ $HOME/.config/
	cp -r kitty/ $HOME/.config/
	cp -r rofi/ $HOME/.config/

########### MacOS ##########
elif [ "$1" = "macos" ]; then
	./scripts/install_macos.sh
	cp -r ghostty/ $HOME/.config/
fi



./scripts/store-git-credentials.sh

echo "Done"

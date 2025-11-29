#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage: $0 <system>"
	echo "<system> : arch, macos"
	exit 1
fi

if [ "$1" = "arch" ]; then
	echo "Setting up Arch Linux system..."
elif [ "$1" = "macos" ]; then
	echo "Setting up MacOS system..."
else
	echo "Unsupported system: $1"
	exit 1
fi



chmod +x scripts/*.sh
mkdir -p $HOME/.config/
mkdir -p $HOME/git/

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
	cp .bashrc_arch $HOME/.bashrc
	mv scripts/open-github-arch.sh scripts/open-github.sh

########### MacOS ##########
elif [ "$1" = "macos" ]; then
	./scripts/install_macos.sh
	cp -r ghostty/ $HOME/.config/
	cp .bashrc_macos $HOME/.bashrc
	mv scripts/open-github-macos.sh scripts/open-github.sh
fi



cp -r scripts/ $HOME/.config/
rm $HOME/.config/scripts/setup.sh

./scripts/store-git-credentials.sh

echo "Done"

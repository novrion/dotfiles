#!/bin/bash
CURRENT_DIR=$(pwd)

sudo pacman -Syu

# AUR package manager
sudo pacman -S --needed base-devel git
cd $HOME/git/
mkdir -p AUR/
cd AUR/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S neovim-nightly

sudo pacman -Sy \
	bspwm \
	sxhkd \
	firefox \
	mpv \
	rofi \
	kitty \
	btop \
	yazi \
	tmux \
	gcc \
	python \
	uv \
	ripgrep \
	lua-language-server \
	tree-sitter \
	tree

cd "$CURRENT_DIR"

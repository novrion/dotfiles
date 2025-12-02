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
	ly \
	firefox \
	mpv \
	rofi \
	kitty \
	btop \
	yazi \
	gcc \
	python \
	uv \
	ripgrep \
	lua-language-server \
	python-lsp-server \
	python-lsp-black \
	python-pyflakes \
	python-pycodestyle \
	rust_analyzer \
	tree-sitter \
	tree

cd "$CURRENT_DIR"

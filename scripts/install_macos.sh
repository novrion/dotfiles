#!/bin/bash
brew update
brew upgrade
brew install \
	git \
	btop \
	yazi \
	tmux \
	ghostty \
	gcc \
	python \
	uv \
	ripgrep \
	lua-language-server \
	pylsp \
	tree
brew install --cask neovim-nightly

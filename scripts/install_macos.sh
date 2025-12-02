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
	rust-analyzer \
	pylsp \
	tree-sitter \
	tree
brew install neovim --HEAD 

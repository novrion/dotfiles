#!/bin/bash
chmod +x scripts/*.sh

mkdir -p $HOME/.config/
mkdir -p $HOME/.config/scripts/

cp .bashrc $HOME/

# Config
cp -r scripts/ $HOME/.config/scripts/
cp -r nvim $HOME/.config/
cp -r tmux $HOME/.config/

# Scripts


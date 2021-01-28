#!/bin/bash

# Script to set up dev environment.
# Assumes that we are in the ~/dot-files directory.

# Customize bash.
echo "source dot-files/.bashrc" >> ~/.bashrc
source ~/.bashrc

# Customize tmux.
ln -s ~/dot-files/.tmux.conf ~/.tmux.conf

# Customize vim.
ln -s ~/dot-files/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c VundleUpdate -c quitall

# Configures git.
git config --global user.email "jesselu@hollisterphotonics.com"  
git config --global user.name "Jesse Lu"

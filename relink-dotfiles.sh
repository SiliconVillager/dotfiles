#!/bin/bash

# tmux
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# vim
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc

# vimspector
rm ~/.vimspector.json
ln -s ~/dotfiles/vimspector.json ~/.vimspector.json

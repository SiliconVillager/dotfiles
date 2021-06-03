#!/bin/bash

# tmux
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# (n)vim
rm ~/.vimrc
ln -s ~/dotfiles/vimrc ~/.vimrc
rm ~/.config/nvim/init.vim
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim

rm -rf ~/.config/nvim/lua
ln -s ~/dotfiles/lua ~/.config/nvim/lua

# vimspector
rm ~/.vimspector.json
ln -s ~/dotfiles/vimspector.json ~/.vimspector.json

# coc
rm ~/.config/nvim/coc-settings.json
ln -s ~/dotfiles/coc-settings.json ~/.config/nvim/coc-settings.json


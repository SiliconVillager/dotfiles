#!/bin/bash

# tmux
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc
sed -i 's|export ZSH="/home/tomas/.oh-my-zsh"|export ZSH="$HOME/.oh-my-zsh"|' ~/.zshrc

# i3
rm ~/.config/i3/config
mkdir ~/.config/i3
ln -s ~/dotfiles/config/i3/config ~/.config/i3/config

#----------------------------------------------------------------------------
# nvim

rm ~/.config/nvim/init.vim
ln -s ~/dotfiles/nvim/vimrc ~/.config/nvim/init.vim

rm -rf ~/.config/nvim/lua
ln -s ~/dotfiles/nvim/lua ~/.config/nvim/lua

rm -rf ~/.config/nvim/plugin
ln -s ~/dotfiles/nvim/plugin ~/.config/nvim/plugin

# vimspector
rm ~/.vimspector.json
ln -s ~/dotfiles/nvim/vimspector.json ~/.vimspector.json

# coc
rm ~/.config/nvim/coc-settings.json
ln -s ~/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

#----------------------------------------------------------------------------

# backgrounds
rm -rf ~/.local/share/backgrounds
ln -s ~/dotfiles/backgrounds ~/.local/share/backgrounds

# mc
rm ~/.config/mc/ini
ln -s ~/dotfiles/config/mc/ini ~/.config/mc/ini

# alacritty
rm -rf ~/.config/alacritty
ln -s ~/dotfiles/config/alacritty ~/.config/alacritty

# kitty
rm -rf ~/.config/kitty
ln -s ~/dotfiles/config/kitty ~/.config/kitty


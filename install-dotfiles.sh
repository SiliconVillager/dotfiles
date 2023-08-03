#!/bin/bash

# tmux
rm ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

#zsh
rm ~/.zshrc
ln -s ~/dotfiles/zshrc ~/.zshrc

# i3
rm ~/.config/i3/config
mkdir ~/.config/i3
ln -s ~/dotfiles/config/i3/config ~/.config/i3/config

#----------------------------------------------------------------------------
# nvim

rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim

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


#!/bin/bash                                                                                                                        │  1

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Tools
brew install zsh git tmux the_silver_searcher wget

# Use zsh as default shell.
chsh -s `which zsh`

# Install vim-plugged.
curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

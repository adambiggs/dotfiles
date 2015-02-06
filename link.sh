#!/bin/bash
COLOR=`tput setaf 4`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
DIR=`dirname "$0"` # Find the relative path of the script.

# Link dotfiles from this repo to your user directory
echo -e "\n${COLOR}Linking dotfiles into your user directory...${RESET}"
ln -s $DIR/.zshrc ~/.zshrc
ln -s $DIR/.tmux.conf ~/.tmux.conf
ln -s $DIR/.nvimrc ~/.nvimrc
echo -e "${GREEN}Done.${RESET}\n"

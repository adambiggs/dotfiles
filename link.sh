#!/bin/bash
COLOR=`tput setaf 4`
GREEN=`tput setaf 2`
RESET=`tput sgr0`
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo -e "\n${COLOR}Linking dotfiles into your user directory...${RESET}"
ln -si $SCRIPTPATH/.nvimrc ~/.nvimrc
ln -si $SCRIPTPATH/.tmux.conf ~/.tmux.conf
ln -si $SCRIPTPATH/.zshrc ~/.zshrc
echo -e "${GREEN}Done.${RESET}\n"

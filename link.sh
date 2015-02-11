#!/bin/bash
info=`tty -s && tput setaf 4`
good=`tty -s && tput setaf 2`
bad=`tty -s && tput setaf 1`
clear=`tty -s && tput sgr0`
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo -e "\n${info}Linking dotfiles into your user directory...${clear}"
ln -shiv $SCRIPTPATH/.nvimrc ~/.nvimrc
ln -shiv $SCRIPTPATH/.tmux.conf ~/.tmux.conf
ln -shiv $SCRIPTPATH/.tmuxinator ~/.tmuxinator
ln -shiv $SCRIPTPATH/.zshrc ~/.zshrc
echo -e "${good}Done.${clear}"

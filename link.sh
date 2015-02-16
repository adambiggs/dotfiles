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
ln -shiv $SCRIPTPATH/.zlogin ~/.zlogin
echo -e "${good}Done.${clear}"

echo -e "\n${info}Linking Vim spellfiles to NeoVim...${clear}"
echo -e "(See https://github.com/neovim/neovim/issues/1551#issuecomment-65432622)"
ln -shiv ~/.vim/spell ~/.nvim/spell
echo -e "${good}Done.${clear}\n"

#!/bin/bash
info=`tty -s && tput setaf 4`
good=`tty -s && tput setaf 2`
bad=`tty -s && tput setaf 1`
clear=`tty -s && tput sgr0`
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

echo -e "\n${info}Linking dotfiles into your user directory...${clear}"
ln -sfv $SCRIPTPATH/.nvimrc ~/.nvimrc
ln -sfv $SCRIPTPATH/.tmux.conf ~/.tmux.conf
ln -sfv $SCRIPTPATH/.tmuxinator ~/.tmuxinator
ln -sfv $SCRIPTPATH/.zshrc ~/.zshrc
ln -sfv $SCRIPTPATH/.zlogin ~/.zlogin
echo -e "${good}Done.${clear}"

if [[ $OSTYPE == darwin* ]]; then
  echo -e "\n${info}Linking custom Karabiner key mappings...${clear}"
  ln -sfv $SCRIPTPATH/prefs/karabiner/private.xml ~/Library/Application\ Support/Karabiner/private.xml
  echo -e "${good}Done.${clear}"
fi

echo ""

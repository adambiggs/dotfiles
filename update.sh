#!/bin/bash
info=`tty -s && tput setaf 4`
good=`tty -s && tput setaf 2`
bad=`tty -s && tput setaf 1`
clear=`tty -s && tput sgr0`

# Homebrew
echo -e "\n${info}Updating Homebrew packages...${clear}"
brew update
brew upgrade
#brew reinstall --HEAD neovim # TODO: check for updates before reisntalling...
echo -e "${good}Done.${clear}"

# pip
echo -e "\n${info}Updating certain pip packages...${clear}"
sudo pip install -U neovim awscli
echo -e "${good}Done.${clear}"

# gem
echo -e "\n${info}Updating certain ruby gems...${clear}"
gem update tmuxinator CoffeeTags
echo -e "${good}Done.${clear}"

# zgen
# TODO: Not working...
#echo -e "\n${info}Updating zsh plugins...${clear}"
#zgen selfupdate
#zgen update
#echo -e "${good}Done.${clear}"

# Git submodules
echo -e "\n${info}Updating zsh plugins...${clear}"
git submodule update
echo -e "${good}Done.${clear}"

echo -e ""

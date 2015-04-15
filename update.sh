#!/bin/zsh
info=`tty -s && tput setaf 4`
good=`tty -s && tput setaf 2`
bad=`tty -s && tput setaf 1`
clear=`tty -s && tput sgr0`

# Homebrew
echo -e "\n${info}Updating Homebrew packages...${clear}"
brew update
brew upgrade
#brew reinstall --HEAD neovim # TODO: check for updates before reisntalling...
brew cleanup
echo -e "${good}Done.${clear}"

# pip
echo -e "\n${info}Updating certain pip packages...${clear}"
pip install -U neovim awscli
echo -e "${good}Done.${clear}"

# gem
echo -e "\n${info}Updating certain ruby gems...${clear}"
gem update tmuxinator CoffeeTags
echo -e "${good}Done.${clear}"

# zgen
echo -e "\n${info}Updating zgen...${clear}"
source ~/.dotfiles/libs/zgen/zgen.zsh
zgen-selfupdate
echo -e "${good}Done.${clear}"
echo -e "\n${info}Updating zgen plugins...${clear}"
zgen-update
echo -e "${good}Done.${clear}"
echo -e "${info}If there were any zgen plugin updates, you should ${good}exit${info} and start a new terminal session.${clear}"

# Git submodules
echo -e "\n${info}Updating git submodules...${clear}"
git submodule update --remote --rebase
echo -e "${good}Done.${clear}"

echo -e ""

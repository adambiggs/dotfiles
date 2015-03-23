#!/bin/bash
info=`tty -s && tput setaf 4`
good=`tty -s && tput setaf 2`
bad=`tty -s && tput setaf 1`
clear=`tty -s && tput sgr0`

# Install a Homebrew package if not already installed.
function install_brew_pkg() {
  pkg_name=$1
  pkg_installed=`brew ls | grep $pkg_name`
  if [ -z $pkg_installed ]; then
    if [ $pkg_name == 'neovim' ]; then
      brew tap neovim/homebrew-neovim
      brew install --HEAD neovim
    else
      brew install $pkg_name
    fi
  fi
}

# Homebrew
echo -e "\n${info}Installing Homebrew packages...${clear}"
if ! type brew > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
install_brew_pkg neovim
install_brew_pkg zsh
install_brew_pkg git
install_brew_pkg tmux
install_brew_pkg the_silver_searcher
install_brew_pkg wget
echo -e "${good}Done.${clear}"

# Use zsh as default shell.
echo -e "\n${info}Switching default shell to ZSH...${clear}"
ZSH_DIR=`whereis zsh`
DEFAULT_SHELL=`finger $LOGNAME | grep Shell | awk -F':' '{print $3}'`
if [ $ZSH_DIR == $DEFAULT_SHELL ]; then
  echo -e "${good}Default shell already using${clear}$DEFAULT_SHELL${good}.${clear}"
else
  chsh -s `which zsh`
  echo -e "${good}Done.${clear}"
fi

# Install Git submodules.
echo -e "\n${info}Installing Git submodules...${clear}"
git submodule init
git submodule update
echo -e "${good}Done.${clear}"

# Install vim-plugged.
echo -e "\n${info}Installing Vim-Plug...${clear}"
VIMPLUG_PATH=~/.nvim/autoload/plug.vim
if [ -e "$VIMPLUG_PATH" ]; then
  echo -e "${good}Already installed.${clear}\n"
else
  curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo -e "${good}Done.${clear}"
fi

# Open Vim and install plugins.
echo -e "\n${info}Starting NeoVim and installing plugins...${clear}"
echo -e "You'll have to quite NeoVim manually when complete."
echo -e "See: https://github.com/junegunn/vim-plug/issues/104"
nvim +PlugInstall
echo -e "${good}Done.${clear}\n"

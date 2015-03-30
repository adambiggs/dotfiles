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
    elif [ $pkg_name == 'battery' ]; then
      brew tap Goles/battery
      brew install $pkg_name
    else
      brew install $pkg_name
    fi
  fi
}

# Install a Homebrew Cask package if not already installed.
function install_brew_cask() {
  cask_name=$1
  cask_insalled=`brew cask ls | grep $cask_name`
  if [ -z $cask_insalled  ]; then
    brew cask install $cask_name
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
install_brew_pkg ctags
install_brew_pkg tmux
install_brew_pkg the_silver_searcher
install_brew_pkg battery
install_brew_pkg wget
install_brew_pkg reattach-to-user-namespace
install_brew_pkg boot2docker
echo -e "${good}Done.${clear}"

# Homebrew Casks
echo -e "\n${info}Installing Homebrew Casks...${clear}"
if [ -z `brew ls | grep brew-cask` ]; then
  brew install caskroom/cask/brew-cask
  brew tap caskroom/versions
fi
install_brew_cask iterm2-nightly
install_brew_cask spectacle
install_brew_cask flycut
install_brew_cask sourcetree
install_brew_cask virtualbox
echo -e "${good}Done.${clear}"

# Homebrew cleanup
echo -e "\n${info}Cleaning up Homebrew installation files...${clear}"
brew cleanup
brew cask cleanup
echo -e "${good}Done.${clear}"

# Use zsh as default shell
echo -e "\n${info}Switching default shell to ZSH...${clear}"
ZSH_DIR=`whereis zsh`
DEFAULT_SHELL=`finger $LOGNAME | grep Shell | awk -F':' '{print $3}'`
if [ $ZSH_DIR == $DEFAULT_SHELL ]; then
  echo -e "${good}Default shell already using${clear}$DEFAULT_SHELL${good}.${clear}"
else
  chsh -s `which zsh`
  echo -e "${good}Done.${clear}"
fi

# Git submodules
echo -e "\n${info}Installing Git submodules...${clear}"
git submodule init
git submodule update
echo -e "${good}Done.${clear}"

# Fonts
echo -e "\n${info}Installing patched fonts...${clear}"
themes/patched-fonts/install.sh
echo -e "${good}Done.${clear}"

# iTerm CLI
echo -e "\n${info}Installing iTerm cli integration...${clear}"
ITERM_CLI_PATH=~/.iterm2_shell_integration.zsh
if [ -e "$ITERM_CLI_PATH" ]; then
  echo -e "${good}Already installed.${clear}"
else
  curl -L iterm2.com/misc/install_shell_integration.sh | bash
  echo -e "${good}Done.${clear}"
fi

# Ruby Gems
echo -e "\n${info}Installing Ruby gems...${clear}"
sudo gem install CoffeeTags tmuxinator
echo -e "${good}Done.${clear}"

# PIP packages
echo -e "\n${info}Installing PIP packages...${clear}"
sudo pip install --no-cache-dir neovim awscli
echo -e "${good}Done.${clear}"

# Vim-Plug
echo -e "\n${info}Installing Vim-Plug...${clear}"
VIMPLUG_PATH=~/.nvim/autoload/plug.vim
if [ -e "$VIMPLUG_PATH" ]; then
  echo -e "${good}Already installed.${clear}"
else
  curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  echo -e "${good}Done.${clear}"
fi

# Vim plugins
echo -e "\n${info}Starting NeoVim and installing plugins...${clear}"
echo -e "You'll have to quit NeoVim manually when complete."
echo -e "See: https://github.com/junegunn/vim-plug/issues/104"
nvim +PlugInstall
echo -e "${good}Done.${clear}\n"

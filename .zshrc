### PLUGINS ###
source $HOME/.dotfiles/libs/zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
  echo "Creating zgen init script..."

  # oh-my-zsh plugins.
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/cake
  zgen oh-my-zsh plugins/command-not-found
  zgen oh-my-zsh plugins/docker
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/symfony2
  zgen oh-my-zsh plugins/tmux

  # Other plugins.
  zgen load Tarrasch/zsh-bd
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-history-substring-search
  zgen load zsh-users/zsh-syntax-highlighting

  # Theme.
  zgen oh-my-zsh themes/agnoster

  # Save init script.
  zgen save
fi


### CONFIG ###
DEFAULT_USER="adam"
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
DISABLE_CORRECTION=true
# DISABLE_UNTRACKED_FILES_DIRTY=true # Improves repo status check time.
export UPDATE_ZSH_DAYS=1
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true


### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.

# Bind UP and DOWN arrow keys for subsstring search.
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


### PATHS ###
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add Homebrew paths if `brew` is installed.
if command -v brew >/dev/null; then
  HOMEBREW=/usr/local/bin:/usr/local/sbin
  export PATH=$HOMEBREW:$PATH
fi


### ALIASES ###
alias ..='cd ..'
alias ls='ls -lhsGF'
alias lsa='ls -alhsGF'
alias kmux='tmux kill-server'
alias vu='vagrant up --provider=vmware_fusion'
alias vs='vagrant ssh'
alias vimclean='rm -rf ~/.viminfo ~/.vimswap ~/.vimviews ~/.vimbackup ~/.nviminfo ~/.nvimswap ~/.nvimviews ~/.nvimbackup'


# Docker
alias b2d='boot2docker'
alias b2d-start='b2d init && b2d start && $(b2d shellinit)'
alias dc='docker-compose'
alias dock-rm='docker rm $(docker ps -a -q)' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
alias dock-rmi='docker rmi $(docker images -q --filter "dangling=true")' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html#comment-1515979883

# LMPM
alias lmpm-builder='~/Repos/lmpm/builder/use.sh'


### LIBRARY CONFIG ###
source ~/.nvm/nvm.sh # NVM (https://github.com/creationix/nvm)

# Base16 theme.
source ~/.dotfiles/themes/base16-shell/base16-eighties.dark.sh

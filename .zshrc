### PLUGINS ###
source $HOME/.antigen/antigen.zsh # http://antigen.sharats.me

antigen use oh-my-zsh # Load oh-my-zsh.

# Default oh-my-zsh bundles.
antigen bundle cake
antigen bundle command-not-found
antigen bundle docker
antigen bundle git
antigen bundle npm
antigen bundle osx
antigen bundle pip
antigen bundle symfony2
antigen bundle tmux

# Other 3rd party plugins.
antigen bundle Tarrasch/zsh-bd
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster # Set theme.
antigen apply # Apply antigen config.


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
alias vundle='vim +BundleInstall! +BundleClean +qall'
alias vimclean='rm -rf ~/.viminfo ~/.vimswap ~/.vimviews ~/.vimbackup ~/.nviminfo ~/.nvimswap ~/.nvimviews ~/.nvimbackup'

alias awsp='/Users/adam/.local/lib/aws/bin/aws' # TEMP

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

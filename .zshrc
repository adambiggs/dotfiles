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


### SSH ###
ssh-add ~/.ssh/hvh-us-east.pem


### SOURCES ###
source ~/.nvm/nvm.sh # NVM (https://github.com/creationix/nvm)

### PATHS ###
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add Homebrew paths if `brew` is installed.
if command -v brew >/dev/null; then
  HOMEBREW=/usr/local/bin:/usr/local/sbin
  export PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
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
alias vimclean='rm -rf ~/.viminfo ~/.vimswap ~/.vimundo ~/.vimviews ~/.vimbackup'

alias awsp='/Users/adam/.local/lib/aws/bin/aws' # TEMP

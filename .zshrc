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
  zgen oh-my-zsh plugins/brew-cask

  # Other plugins.
  zgen load Tarrasch/zsh-bd
  zgen load zsh-users/zsh-completions src
  zgen load sdurrheimer/docker-compose-zsh-completion
  zgen load zsh-users/zsh-history-substring-search
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load peterhurford/git-it-on.zsh
  zgen load supercrabtree/k
  zgen load hchbaw/opp.zsh
  zgen load marzocchi/zsh-notify . next-iterm

  # Theme.
  zgen oh-my-zsh themes/agnoster

  # Save init script.
  zgen save
fi


### COMPLETIONS ###
source /usr/local/bin/aws_zsh_completer.sh


### CONFIG ###
export DEFAULT_USER="adam"
export COMPLETION_WAITING_DOTS=true
export DISABLE_UPDATE_PROMPT=true
export DISABLE_CORRECTION=true
# export DISABLE_UNTRACKED_FILES_DIRTY=true # Improves repo status check time.
export UPDATE_ZSH_DAYS=1
export EDITOR='nvim'
export DISABLE_AUTO_TITLE=true
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1 # https://github.com/neovim/neovim/pull/2007#issuecomment-74863439
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export FZF_DEFAULT_COMMAND='ag -l -g ""' # Use ag as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'


### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
bindkey -v

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

# Basic shortcuts
alias ..='cd ..'
alias kmux='tmux kill-server'
alias vimclean='rm -rf ~/.viminfo ~/.vimswap ~/.vimviews ~/.vimbackup ~/.nviminfo ~/.nvimswap ~/.nvimviews ~/.nvimbackup'

# Git
alias github='gitit'

# Scripts
alias fr='$HOME/.dotfiles/scripts/find-and-replace.sh'

# Docker
alias drun='docker run --rm -ti'
alias drc='docker rm $(docker ps -a -q)' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
alias dri='docker rmi $(docker images -q --filter "dangling=true")' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html#comment-1515979883

# Boot2Docker
alias 2d='boot2docker'
alias 2ds='boot2docker start && $(boot2docker shellinit)'

# Docker Compose
alias dc='docker-compose'
alias dcu='docker-compose up -d'
alias dcl='docker-compose logs'
alias dcr='docker-compose run --rm'
docker_compose_rm() {
  docker-compose stop $@
  docker-compose rm --force $@
}
alias dcrm=docker_compose_rm

# Docker Machine
alias dm='docker-machine'

# LMPM
alias lmpm-builder='~/Repos/lmpm/builder/use.sh'


### LIBRARY CONFIG ###

# NVM
source ~/.dotfiles/libs/nvm/nvm.sh

# Base16 theme.
source ~/.dotfiles/themes/base16-shell/base16-eighties.dark.sh

# iTerm cli integration.
source /Users/adam/.iterm2_shell_integration.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

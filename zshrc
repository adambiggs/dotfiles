### PLUGINS ###
export ZPLUG_HOME=~/.config/zplug
source `brew --prefix zplug`/init.zsh

source ~/.dotfiles/plugins.zsh

# Check for uninstalled plugins.
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Source plugins.
zplug load --verbose


### COMPLETIONS ###
type tmuxp &> /dev/null && eval "`_TMUXP_COMPLETE=source tmuxp`"


### CONFIG ###

# ZSH history
setopt append_history
setopt hist_expire_dups_first
setopt hist_fcntl_lock
setopt hist_ignore_all_dups
setopt hist_lex_words
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt share_history

export CLICOLOR=1
export BLOCK_SIZE=human-readable # https://www.gnu.org/software/coreutils/manual/html_node/Block-size.html
export HISTSIZE=11000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history

export DEFAULT_USER="adam"
export DISABLE_AUTO_TITLE=true
export DISABLE_CORRECTION=true
#export DISABLE_UNTRACKED_FILES_DIRTY=true # Improves repo status check time.
export DISABLE_UPDATE_PROMPT=true
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --hidden' # Use ripgrep as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export UPDATE_ZSH_DAYS=1
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='    '
export ZSH_CACHE_DIR=$ZSH/cache
export COMPOSE_HTTP_TIMEOUT=120


### AUTOSUGGESTIONS ###
if zplug check zsh-users/zsh-autosuggestions; then
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
fi


### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
bindkey -v

# Bind UP and DOWN arrow keys for subsstring search.
if zplug check zsh-users/zsh-history-substring-search; then
  zmodload zsh/terminfo
  bindkey "$terminfo[cuu1]" history-substring-search-up
  bindkey "$terminfo[cud1]" history-substring-search-down
fi


### PATHS ###

# Repos
export REPO_PATH=$HOME/Repos

# Ruby
RUBYPATH=/usr/local/opt/ruby/bin
echo $PATH | grep -q $RUBYPATH || export PATH=$RUBYPATH:$PATH

# Go
if command -v go >/dev/null; then
  export GOPATH=`go env GOPATH`
  export GOROOT=`go env GOROOT`
  echo $PATH | grep -q $GOPATH/bin || export PATH=$GOPATH/bin:$PATH
  echo $PATH | grep -q $GOROOT/bin || export PATH=$GOROOT/bin:$PATH
fi

# Java
JAVA_HOME=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home
[ -f $JAVA_HOME/bin/java ] && export JAVA_HOME=$JAVA_HOME

# Homebrew
if command -v brew >/dev/null; then
  BREWSBIN=/usr/local/sbin
  BREWBIN=/usr/local/bin
  echo $PATH | grep -q $BREWSBIN || export PATH=$BREWSBIN:$PATH
  echo $PATH | grep -q $BREWBIN || export PATH=$BREWBIN:$PATH
fi

# PHP
PHPBIN=/usr/local/opt/php@7.2/bin
echo $PATH | grep -q $PHPBIN || export PATH=$PHPBIN:$PATH
PHPSBIN=/usr/local/opt/php@7.2/sbin
echo $PATH | grep -q $PHPSBIN || export PATH=$PHPSBIN:$PATH

# Composer
if command -v composer >/dev/null; then
  COMPOSERBIN=$HOME/.composer/vendor/bin
  echo $PATH | grep -q $COMPOSERBIN || export PATH=$PATH:$COMPOSERBIN
fi


### ALIASES ###

# General shortcuts
alias sudo='sudo ' # @see http://askubuntu.com/a/22043
alias ..='cd ..'
alias l='ls -lAh'
alias echopath='echo $PATH | tr ":" "\012"'
alias kmux='tmux kill-server'
alias vimclean='rm -rf ~/.config/nvim/session/* ~/.config/nvim/swap/* ~/.config/nvim/undo/*  ~/.config/nvim/views/*'

# Git
alias github='gitit'
alias glg='git log --all --graph --decorate --oneline'

# NeoVim
alias nvim-debug='ulimit -c unlimited && nvim'
alias nvim-backtrace='gdb -q -n -ex bt -batch /usr/local/bin/nvim /cores/core.* > backtrace.txt && rm -f /cores/core.*'

# Scripts
alias stackshot='sudo $HOME/.dotfiles/scripts/stackshot/stackshot.sh'

# Docker
alias drun='docker run --rm -ti'
alias drc='docker rm $(docker ps -a -q) 2>/dev/null' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
alias dri='docker rmi $(docker images -q --filter "dangling=true") 2>/dev/null' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html#comment-1515979883

# Boot2Docker
alias 2d='boot2docker'
alias 2ds='boot2docker start && $(boot2docker shellinit)'

# Docker Compose
alias dc='docker-compose'
alias dcu='docker-compose up -d --remove-orphans'
alias dcl='docker-compose logs --tail 200 -f'
alias dcr='docker-compose run --rm'
docker_compose_rm() {
  docker-compose stop --timeout 1 $@
  docker-compose rm --force $@
}
alias dcrm=docker_compose_rm

# Docker Machine
alias dm='docker-machine'

# LMPM


### LIBRARY CONFIG ###

# Export $NPM_PATH
if command -v npm >/dev/null; then
  export NPM_PATH=`npm root -g`
fi

# Add Yarn global binaries to $PATH
if command -v yarn >/dev/null; then
  YARNBIN=`yarn global bin`
  echo $PATH | grep -q $YARNBIN || export PATH=$PATH:$YARNBIN
fi

# iTerm cli integration.
[ -f ~/.iterm2_shell_integration.zsh ] && source ~/.iterm2_shell_integration.zsh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/adam/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/adam/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/adam/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/adam/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/adam/Repos/lmpm/lambda-api/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/adam/Repos/lmpm/lambda-api/node_modules/tabtab/.completions/slss.zsh

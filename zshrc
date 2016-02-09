

### PLUGINS ###
export ZPLUG_HOME=~/.config/zplug
source ~/.dotfiles/libs/zplug/zplug

zplug "akoenig/gulp.plugin.zsh"
zplug "djui/alias-tips"
zplug "jimmijj/zsh-syntax-highlighting", nice:18 # Should be loaded 2nd last.
zplug "peterhurford/git-it-on.zsh"
zplug "plugins/brew-cask", from:oh-my-zsh
zplug "plugins/cake", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/symfony2", from:oh-my-zsh
zplug "sdurrheimer/docker-compose-zsh-completion"
zplug "tarruda/zsh-autosuggestions", of:"dist/autosuggestions.zsh"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", nice:19 # Should be loaded last.

# Theme.
zplug "adambiggs/zsh-theme", of:adambiggs.zsh-theme

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
[ -f /usr/local/bin/aws_zsh_completer.sh ] && source /usr/local/bin/aws_zsh_completer.sh
[ -f /usr/local/bin/tmuxp.zsh ] && source /usr/local/bin/tmuxp.zsh


### CONFIG ###
unset COMPLETION_WAITING_DOTS # https://github.com/tarruda/zsh-autosuggestions#known-issues
#export COMPLETION_WAITING_DOTS=true
export DEFAULT_USER="adam"
export DISABLE_AUTO_TITLE=true
export DISABLE_CORRECTION=true
#export DISABLE_UNTRACKED_FILES_DIRTY=true # Improves repo status check time.
export DISABLE_UPDATE_PROMPT=true
export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='ag -l -g ""' # Use ag as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1 # https://github.com/neovim/neovim/pull/2007#issuecomment-74863439
export UPDATE_ZSH_DAYS=1
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='    '


### AUTOSUGGESTIONS ###
if zplug check tarruda/zsh-autosuggestions; then
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
  autosuggest_start # Enable autosuggestions
fi

### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
bindkey -v

# Bind UP and DOWN arrow keys for subsstring search.
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


### PATHS ###

# Repos
export REPO_PATH=$HOME/Repos

# Ruby
RUBYPATH=$HOME/.gem/ruby/2.0.0/bin
echo $PATH | grep -q $RUBYPATH || export PATH=$PATH:$RUBYPATH

# Go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
echo $PATH | grep -q $GOPATH/bin || export PATH=$PATH:$GOPATH/bin
echo $PATH | grep -q $GOROOT/bin || export PATH=$PATH:$GOROOT/bin

# Add Homebrew paths if `brew` is installed.
if command -v brew >/dev/null; then
  BREWBIN=/usr/local/bin
  BREWSBIN=/usr/local/sbin
  echo $PATH | grep -q $BREWBIN || export PATH=$PATH:$BREWBIN
  echo $PATH | grep -q $BREWSBIN || export PATH=$PATH:$BREWSBIN
fi


### ALIASES ###

# General shortcuts
alias sudo='sudo ' # @see http://askubuntu.com/a/22043
alias ..='cd ..'
alias echopath='echo $PATH | tr ":" "\012"'
alias kmux='tmux kill-server'
alias vimclean='rm -rf ~/.config/nvim/session/* ~/.config/nvim/swap/* ~/.config/nvim/undo/*  ~/.config/nvim/views/*'

# Git
alias github='gitit'
alias gitgraph='git log --all --graph --decorate --oneline'

# NeoVim
alias nvim-debug='ulimit -c unlimited && nvim'
alias nvim-backtrace='gdb -q -n -ex bt -batch /usr/local/bin/nvim /cores/core.* > backtrace.txt && rm -f /cores/core.*'

# Scripts
alias fr='$HOME/.dotfiles/scripts/find-and-replace.sh'
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

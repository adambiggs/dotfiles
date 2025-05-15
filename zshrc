# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# if [ -f /etc/profile ]; then
#   PATH=""
#   source /etc/profile
# fi

### PLUGINS ###
# Lazy-load antidote and generate the static load file only when needed
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source $(brew --prefix antidote)/share/antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
  )
fi
source ${zsh_plugins}.zsh
autoload -Uz promptinit && promptinit && prompt powerlevel10k

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
# export EDITOR='nvim'
export FZF_DEFAULT_COMMAND='rg --files --hidden' # Use ripgrep as the default source for fzf
export FZF_DEFAULT_OPTS='--multi'
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=300
export UPDATE_ZSH_DAYS=1
export ZSH_PLUGINS_ALIAS_TIPS_TEXT='    '
export ZSH_CACHE_DIR=$ZSH/cache
export COMPOSE_HTTP_TIMEOUT=120


### AUTOSUGGESTIONS ###
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets


### KEY BINDINGS ###
KEYTIMEOUT=1 # Prevents key timeout lag.
bindkey -v

# Bind UP and DOWN arrow keys for subsstring search.
zmodload zsh/terminfo
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down


### COMPLETIONS ###
eval "$(aws-vault --completion-script-zsh)"
# type tmuxp &> /dev/null && eval "`_TMUXP_COMPLETE=source tmuxp`"


### ALIASES ###

# General shortcuts
alias sudo='sudo ' # @see http://askubuntu.com/a/22043
alias ..='cd ..'
alias l='ls -lAh'
alias echopath='echo $PATH | tr ":" "\012"'
# alias vimclean='rm -rf ~/.config/nvim/session/* ~/.config/nvim/swap/* ~/.config/nvim/undo/*  ~/.config/nvim/views/*'

# Git
alias github='gitit'
alias glg='git log --all --graph --decorate --oneline'

# NeoVim
# alias nvim-debug='ulimit -c unlimited && nvim'
# alias nvim-backtrace='gdb -q -n -ex bt -batch /usr/local/bin/nvim /cores/core.* > backtrace.txt && rm -f /cores/core.*'

# Scripts
alias stackshot='sudo $HOME/.dotfiles/scripts/stackshot/stackshot.sh'

# Docker
alias drun='docker run --rm -ti'
alias drc='docker rm $(docker ps -a -q) 2>/dev/null' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html
alias dri='docker rmi $(docker images -q --filter "dangling=true") 2>/dev/null' # http://jimhoskins.com/2013/07/27/remove-untagged-docker-images.html#comment-1515979883

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


### LIBRARY CONFIG ###

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

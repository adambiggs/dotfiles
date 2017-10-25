#!/bin/zsh

# NVM
export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.config/nvm"
mkdir -p $NVM_DIR
zplug "lukechilds/zsh-nvm"

# Others
zplug "aws/aws-cli", use:"bin/aws_zsh_completer.sh"
zplug "djui/alias-tips"
zplug "docker/compose", as:command, use:"contrib/completion/zsh/_docker-compose"
zplug "docker/docker", as:command, use:"contrib/completion/zsh/_docker"
zplug "gulpjs/gulp", use:"completion/zsh"
zplug "modules/directory", from:prezto
zplug "modules/git", from:prezto
zplug "modules/osx", from:prezto
# zplug "peterhurford/git-it-on.zsh"
zplug "plugins/yarn", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3 # Should be loaded last.
zplug "zsh-users/zsh-syntax-highlighting", defer:3 # Should be loaded 2nd last.

setopt prompt_subst # Make sure propt is able to be generated properly.
zplug "adambiggs/zsh-theme", as:theme, use:adambiggs.zsh-theme

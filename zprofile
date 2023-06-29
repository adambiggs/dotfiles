# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Homebrew python
export PATH="$PATH:$(brew --prefix python)/libexec/bin"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Yarn global binaries to $PATH
if command -v yarn >/dev/null; then
  YARNBIN=`yarn global bin`
  export PATH=$PATH:$YARNBIN
fi

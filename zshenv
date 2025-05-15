### PATHS ###

# Ruby
RUBYPATH=/opt/homebrew/opt/ruby/bin
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
eval "$(/opt/homebrew/bin/brew shellenv)"

# PHP
PHPBIN=/opt/homebrew/opt/php@8.1/bin
echo $PATH | grep -q $PHPBIN || export PATH=$PHPBIN:$PATH
PHPSBIN=/opt/homebrew/opt/php@8.1/sbin
echo $PATH | grep -q $PHPSBIN || export PATH=$PHPSBIN:$PATH

# Composer
if command -v composer >/dev/null; then
  COMPOSERBIN=$HOME/.composer/vendor/bin
  echo $PATH | grep -q $COMPOSERBIN || export PATH=$PATH:$COMPOSERBIN
fi

# Add asdf to $PATH
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Pipx
export PATH="$PATH:/Users/adam/.local/bin"
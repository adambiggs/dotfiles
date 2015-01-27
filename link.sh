## Link dotfiles from this repo to your user directory ##

# First back up existing files if they exist
# TODO

pwd

# Create the links
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf

echo 'Dotfiles linked to your user directory'

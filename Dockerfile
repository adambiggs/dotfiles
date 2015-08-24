FROM ubuntu:latest
MAINTAINER Adam Biggs <adam.biggs@lightmaker.com>

# Locale
RUN locale-gen en_US.UTF-8
ENV \
  LANG=en_US.UTF-8 \
  LANGUAGE=en_US:en \
  LC_ALL=en_US.UTF-8

# Dependencies
RUN \
  DEBIAN_FRONTEND=noninteractive apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq zsh tmux ruby m4 texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev libtool autoconf automake cmake libncurses5-dev g++ pkg-config unzip git curl && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties software-properties-common && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip python-dev build-essential gcc python-dateutil python-docutils python-feedparser python-gdata python-jinja2 python-ldap python-libxslt1 python-lxml python-mako python-mock python-openid python-psycopg2 python-psutil python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi libffi-dev

# Create non-root user
RUN \
  adduser --disabled-password --gecos '' docker && \
  adduser docker sudo && \
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
  mkdir -p /home/docker/build && \
  mkdir -p /home/docker/.ssh
USER docker

# Install
ENV \
  PATH=/home/docker/.linuxbrew/bin:$PATH \
  MANPATH=/home/docker/.linuxbrew/bin:$MANPATH \
  INFOPATH=/home/docker/.linuxbrew/bin:$INFOPATH
RUN \
  echo $HOME && \
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)" && \
  git clone https://github.com/adambiggs/dotfiles ~/.dotfiles && \
  cd ~/.dotfiles && \
  ./install.sh && \
  ./link.sh

# Node.js setup
ENV NODE_VERSION=iojs
RUN \
  cd ~/.nvm && \
  . ~/.nvm/nvm.sh && \
  nvm install $NODE_VERSION && \
  nvm alias default $NODE_VERSION && \
  nvm use $NODE_VERSION && \
  npm install -g coffee-script grunt-cli gulp node-inspector

# Zsh config
#RUN \
  #chsh -s /bin/zsh
#RUN git clone https://github.com/zsh-users/antigen.git $HOME/.antigen
#ADD .zshrc /root/.zshrc
#RUN /bin/zsh -c 'source ~/.zshrc'

# TMUX config
#ADD .tmux.conf /root/.tmux.conf

# NeoVim config
#RUN mkdir -p /root/.nvim/autoload
#RUN curl -fLo /root/.nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#RUN git clone https://github.com/adambiggs/odam-nvim.git /root/odam-nvim
#RUN ln -s /root/odam-nvim/.nvimrc /root/.nvimrc
#RUN pip install neovim

ENTRYPOINT /bin/zsh

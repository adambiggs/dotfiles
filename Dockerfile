FROM ubuntu

# Locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# Setup
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y zsh tmux ruby-full libtool autoconf automake cmake libncurses5-dev g++ pkg-config unzip git curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-pip python-dev build-essential gcc python-dateutil python-docutils python-feedparser python-gdata python-jinja2 python-ldap python-libxslt1 python-lxml python-mako python-mock python-openid python-psycopg2 python-psutil python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi libffi-dev
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:neovim-ppa/unstable
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y neovim

# Node.js setup
ENV NODE_VERSION v0.11.15
RUN git clone https://github.com/creationix/nvm.git ~/.nvm
RUN cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
RUN . ~/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION
RUN . ~/.nvm/nvm.sh && npm install -g coffee-script grunt-cli gulp node-inspector

# Zsh config
RUN chsh -s /bin/zsh
RUN git clone https://github.com/zsh-users/antigen.git $HOME/.antigen
ADD .zshrc /root/.zshrc
RUN /bin/zsh -c 'source ~/.zshrc'

# TMUX config
ADD .tmux.conf /root/.tmux.conf
RUN gem install tmuxinator

# NeoVim config
RUN mkdir -p /root/.nvim/autoload
RUN curl -fLo /root/.nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/adambiggs/odam-nvim.git /root/odam-nvim
RUN ln -s /root/odam-nvim/.nvimrc /root/.nvimrc
RUN pip install neovim

ENTRYPOINT /bin/zsh

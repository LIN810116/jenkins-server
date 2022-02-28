FROM jenkins/jenkins:lts-jdk11

USER root

ENV SETUP_SCRIPTS /setup_scripts

RUN mkdir -p $SETUP_SCRIPTS
COPY install_python.sh $SETUP_SCRIPTS/

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && \
    apt-get install -y curl \
    nodejs \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install node packages
RUN npm install -g --silent gh-pages

# Install pyenv & python verions
ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN apt-get update && \
    apt-get install -y make \
    build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl https://pyenv.run | bash
RUN pyenv update
RUN sed -i 's/\r$//' $SETUP_SCRIPTS/install_python.sh
RUN /bin/bash $SETUP_SCRIPTS/install_python.sh

# Install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# docker build -f Dockerfile -t jenkins-server .





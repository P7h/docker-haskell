FROM ubuntu

MAINTAINER Prashanth Babu <Prashanth.Babu@gmail.com>

RUN apt-get update -yqq && \
  apt-get install -yqq software-properties-common tmux screen vim && \
  add-apt-repository -y ppa:hvr/ghc && \
  apt-get update -yqq && \
  apt-get install -yqq cabal-install-1.24 ghc-8.0.2 && \
  apt-get autoclean && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# We will be running as `root` user.
USER root

# Working directory is set to the home folder of `root` user.
WORKDIR /root

# Configure env variables for Haskell and Cabal.
ENV HASKELL_HOME    /opt/ghc/8.0.2/
ENV CABAL_HOME      /opt/cabal/1.24/
ENV PATH            $HASKELL_HOME/bin:$CABAL_HOME/bin:$PATH

CMD ["/bin/bash"]

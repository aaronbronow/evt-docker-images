#!/usr/bin/env bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s $1
echo 'install: --no-document\nupdate: --no-document' > ~/.gemrc

# Install nodejs (needed by coffescripts)
curl https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.bash_profile
nvm install v5.8.0

pip install awscli==1.11.18 --user
source ~/.bash_profile

echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc

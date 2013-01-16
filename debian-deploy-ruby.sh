#!/bin/bash

if [[ "$USER" == "root" ]]; then
    echo "Not root here."
    exit
fi

sudo apt-get -y install gcc
sudo apt-get -y install bzip2
sudo apt-get -y install make
sudo apt-get -y install build-essential bison openssl libreadline6 libreadline6-dev
sudo apt-get -y install git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev


rm -rf ~/.rvm

curl -L get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm
source ~/.bashrc
source ~/.profile

rvm pkg install zlib
rvm install 1.9.3
gem install bundle

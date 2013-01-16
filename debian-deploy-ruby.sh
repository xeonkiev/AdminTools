#!/bin/bash

curl -L get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm
source ~/.bashrc
source ~/.profile

rvm pkg install zlib
rvm install 1.9.3
gem install bundle
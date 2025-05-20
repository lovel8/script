#!/bin/sh

sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install

#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
brew install git bzr jq pkg-config hwloc wget

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 
source $HOME/.cargo/env

./mac_install_go.sh


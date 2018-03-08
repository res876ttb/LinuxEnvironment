#!/bin/bash

# default target folder is home directory
TARGET=$HOME 

# package manager--install
install=sudo apt-get install # for ubuntu
#install=sudo pacman -S # for archlinux
#install=brew install # for macOS

# package manager--update
update=sudo apt-get update # for ubuntu
#update=sudo pacman -Sy # for archlinux
#update=brew update # for macOS

# package manager-upgrade
upgrade=sudo apt-get upgrade # for ubuntu
#upgrade=sudo pacman -Syu # for archlinux
#upgrade=brew upgrade # for macOS

# install brew
#installbrew=/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


###############################################
# start to create environment

# copy .vimrc
cp .vimrc $TARGET/.vimrc

# copy .tmuxrc
cp .tmux.conf $TARGET/.tmux.conf

# install common packages
sudo echo "Start to install common packages"
update
upgrade
install tmux
install git
install vim
install htop
install zsh

# install oh-my-zsh
cd $TARGET && sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# copy on-my-zsh theme
cp ricky.zsh-theme $TARGET/.on-my-zsh/custom/

# copy zsh-autocomplete
cd $TARGET/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-autosuggestions.git

# install vundle
mkdir -p $TARGET/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $TARGET/.vim/bundle/Vundle.vim


#!/bin/sh
INSTALL_DIR=~/vimlinks

stop() {
    echo "$1" >&2
    exit 1
}

install_vimrc () {
    [ -e  $INSTALL_DIR ] && stop "$INSTALL_DIR exists"
    [ -e "~/.vimrc" ] && stop "~/.vimrc exists"
    mkdir $INSTALL_DIR
    cd $INSTALL_DIR

    # pull and set up vundle in correct folder
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    # pull matts vim settings from git

    git clone git://github.com/matthewdippel/mattsvimrc

    # symlink ~/.vimrc
    cd ~
    ln -fs "$INSTALL_DIR/mattsvimrc/vimrc" ~/.vimrc    

    # get cool colors
    git clone https://github.com/fcevado/molokai_dark.git
    ln -fs "$INSTALL_DIR/molokai_dark/colors/molokai_dark.vim" ~/.vim/colors/molokai_dark.vim
    
    # install vim plugins
    vim +PluginInstall +qall

    echo "Installed and configured .vimrc"

}

install_vimrc

#!/bin/bash
# constant
CURRENT_DIR=`pwd`
# output color scheme
GREEN='\033[32m%s\033[m\n'
YELLOW='\033[33m%s\033[m\n'

# install vimplug if not exists
if [ -e ~/.vim/autoload/plug.vim ]; then
    printf $GREEN "vimplug already installed. skipped."
else
    printf $YELLOW "vimplug install..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    printf $GREEN "done."
fi

printf $YELLOW "create vimrc..."
tee ~/.vimrc <<EOF
source $CURRENT_DIR/basic.vim
source $CURRENT_DIR/indent.vim
source $CURRENT_DIR/vimplug.vim
EOF

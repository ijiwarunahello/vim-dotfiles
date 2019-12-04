#!/bin/bash
# constant
CURRENT_DIR=`pwd`

# install vimplug if not exists
if [ -e ~/.vim/autoload/plug.vim ]; then
    echo -e "\e[1;32mvimplug already installed. skipped.\e[m"
else
    echo -e "\e[1;33mvimplug install...\e[m"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo -e "\e[1;32mdone.\e[m"
fi

echo -e "\e[1;33mcreate vimrc...\e[m"
tee ~/.vimrc <<EOF
source $CURRENT_DIR/basic.vim
source $CURRENT_DIR/indent.vim
source $CURRENT_DIR/vimplug.vim
EOF

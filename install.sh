#!/bin/bash
# constant
CURRENT_DIR=`pwd`

# install vimplug if not exists
if [ -e ~/.vim/autoload/plug.vim ]; then
    echo "vimplug already installed. skipped."
else
    echo "vimplug install..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "done."
fi

echo -e "\e[1;33mcreate vimrc...\e[m"
tee ~/.vimrc <<EOF
source $CURRENT_DIR/basic.vim
source $CURRENT_DIR/indent.vim
source $CURRENT_DIR/vimplug.vim
EOF

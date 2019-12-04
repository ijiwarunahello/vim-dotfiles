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

# setting symbolic link
echo "setting .vimrc symbolic..."
ln -sf $CURRENT_DIR/.vimrc ~/.vimrc

#/bin/bash
# constant
CURRENT_DIR=`pwd`

# install vimplug if not exists
if [ -e ~/.vim/autoload/plug.vim ]; then
    echo "vimplug already installed."
else
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# setting symbolic link
echo "setting .vimrc symbolic..."
ln -sf $CURRENT_DIR/.vimrc ~/.vimrc

# vim-dotfiles

# Environment

- Mac OS X Mojave 10.14
- Ubuntu 16.04

# Setup

## Cloning

```bash
cd <any_wordspace>
git clone https://github.com/chigrii/vim-dotfiles
ln -sf ~/vim-dotfiles/.vimrc ~/.vimrc
```

## Install vim-plug(Must)

### Unix(vim)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Open vim and install the plugin with`:PlugInstall` command

# Description

## basic.vim

setting of basic vim

## vim-plug.vim

vim-plug settings

If you don't need a plugin, comment it out and run `:PlugClean`

see the repository below for setting method

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

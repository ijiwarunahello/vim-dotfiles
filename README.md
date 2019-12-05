# vim-dotfiles

# Environment

- Mac OS X Mojave 10.14
- Mac OS X Catalina 10.15
- Ubuntu 16.04
- Raspbian GNU/Linux 9.9 (stretch)

# Setup

## Cloning

```bash
cd ~/<YOUR ORIGIN DIRECTORY>
git clone https://github.com/chigrii/vim-dotfiles
```

## Auto install

```bash
./install.sh
```

## Manual install

### vim-plug(Must)

#### Unix(vim)

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

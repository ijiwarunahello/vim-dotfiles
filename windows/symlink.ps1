$CURRENT_DIR = pwd

echo @"
source $CURRENT_DIR/basic.vim
source $CURRENT_DIR/indent.vim
source $CURRENT_DIR/vimplug.vim
"@ | tee -FilePath ~/_vimrc

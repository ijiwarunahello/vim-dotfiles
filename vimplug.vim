call plug#begin('~/.vim/plugged')

" Pythonの自動補完
Plug 'davidhalter/jedi-vim'

" C++の自動補完
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', {
		\ 'build': {
		\ 'windows' : 'make -f make_mingw32.mak',
		\ 'cygin' : 'make -f make_cygin.mak',
		\ 'mac' : 'make -f make_mac.mak',
		\ 'unix' : 'make -f make_unix.mak',
		\ },
	 	\ }
Plug 'justmao945/vim-clang'
Plug 'Shougo/neoinclude.vim'

" 補完をタブで選択する
Plug 'ervandew/supertab'

" カラースキーム
Plug 'altercation/vim-colors-solarized'

call plug#end()

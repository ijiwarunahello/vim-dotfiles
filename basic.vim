" 行番号を表示する
set number
" シンタックスハイライトを有効
syntax enable
" 自動インデント
set autoindent
" インクリメンタル検索
set incsearch
" 改行したとき、自動でインデントを挿入する
set smartindent
" vimが自動生成するtab幅の設定
set shiftwidth=4
" ヤンクをクリップボードにコピーする
set clipboard=unnamedplus
" マウスカーソル有効化
set mouse=a
" タブ幅の設定
set tabstop=4
" vimでバックスペースを有効にする
set backspace=indent,eol,start

" 各種ファイルの保存場所指定
if has('persistent_undo')
	set undofile
	set undodir=~/.vim/undo
	if !isdirectory(&undodir)
		call mkdir(&undodir, "p")
	endif
endif
set backupdir=~/.vim_backup
if !isdirectory(&backupdir)
	call mkdir(&backupdir, "p")
endif
set directory=~/.vim_swapfile
if !isdirectory(&directory)
	call mkdir(&directory, "p")
endif
let g:netrw_home=expand('~/')

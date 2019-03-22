set number
syntax enable
set autoindent
set incsearch
set smartindent
set shiftwidth=4
set clipboard+=unnamed
set mouse=a
set tabstop=4

set backspace=indent,eol,start

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

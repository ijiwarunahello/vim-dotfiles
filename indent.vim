" Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" javascript
autocmd FileType javascript setl shiftwidth=4 tabstop=2 softtabstop=2

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

" yaml, yml
augroup filetypedetect
	au BufRead,BufNewFile *.yaml setfiletype ansible
	au BufRead,BufNewFile *.yml setfiletype ansible
augroup END
autocmd FileType yml setlocal sw=2 sts=2 ts=2 et
autocmd FileType yaml setlocal sw=2 sts=2 ts=2 et

" Launch
au BufNewFile,BufRead *.launch :set filetype=xml
autocmd FileType launch setl expandtab shiftwidth=2 tabstop=2


" Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" javascript
autocmd FileType javascript setl shiftwidth=4 tabstop=2 softtabstop=2

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Launch
au BufNewFile,BufRead *.launch :set filetype=xml
autocmd FileType launch setl expandtab shiftwidth=2 tabstop=2

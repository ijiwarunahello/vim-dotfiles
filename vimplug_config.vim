" -----jedi-vim-----
" 補完候補を呼び出すとき、常にポップアップメニューを使う
set completeopt=menuone
" vim-plugの遅延ロード呼び出し
autocmd! User jedi-vim call s:jedivim_hook()
function! s:jedivim_hook()
  " 初期化無効化
  let g:jedi#auto_initialization = 0
  " 'completeopt'オプションを上書きしない
  let g:jedi#auto_vim_configuration = 0
  " ドットを入力したとき自動補完しない
  let g:jedi#popup_on_dot = 0
  " 補完候補の1番目を選択しない
  let g:jedi#popup_select_first = 0
  " 関数の引数表示を無効
  let g:jedi#show_call_signatures = 0
  " 補完エンジンにjediを使用
  autocmd FileType python setlocal omnifunc=jedi#completions
endfunction

" ----- supertab -----
" tabでの補完を上から下に選択
let g:SuperTabDefaultCompletionType="<C-n>"

" ----- neocomplete -----
" neocompleteを使用する
let g:neocomplete#enable_at_startup = 1

" keywordの定義
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" omni補完設定
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" ----- vim-clang -----
" 自動補完を無効
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1

let g:clang_c_completeopt = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

" 実行するclangのバージョン設定
if executable('clang-3.6')
	let g:clang_exec = 'clang-3.6'
else
	echo "cannot find clang-3.6"
endif
if executable('clang-format-3.6')
	let g:clang_format_exec = 'clang-format-3.6'
else
	echo "cannot find clang-format-3.6"
endif

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11'

" ライブラリpathの設定
augroup cpp-path
	autocmd!
	autocmd FileType cpp setlocal path=.,/usr/include,/opt/ros/kinetic/include,/home/gucchi/catkin_ws/devel/include
augroup END

" ----- solarized -----
let scheme = 'solarized'
augroup guicolorscheme
	autocmd!
	execute 'autocmd GUIEnter * colorscheme' scheme
augroup END
execute 'colorscheme' scheme
set background=light

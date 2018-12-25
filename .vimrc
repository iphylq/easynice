set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() ==0|pclose|endif
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>','<Down>']
let g:ycm_key_list_select_completion = ['<c-p>','<Up>']
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_min_num_of_chars_for_completion=2



" Vundle needed
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>

"plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
Plugin 'taglist.vim'
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=25

Plugin 'The-NERD-tree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25

Plugin 'indentLine.vim'
Plugin 'delimitMate.vim'
"plugin not hosted on GiuHub
Plugin 'git://git.wincent.com/command-t.git'

" plugin repos on local machine
" Plugin 'file:///home/path/to/plugin'

Plugin 'rstacruz/sparkup', {'rtp':'vim/'}

call vundle#end()

filetype plugin indent on

syntax on
set nu
set showcmd
set helplang=cn
set enc=utf-8
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set iskeyword+=_,$,@,%,#,-
set showmatch

autocmd BufNewFile *.py,*.R,*.cpp,*.c,*.sh,*.java call SetFileHead()
func SetFileHead()
		if &filetype == 'sh'
				call append(0, "#!/bin/bash")
				call append(1, "#######################################################")
				call append(2, "#   File Name: ".expand("%"))
				call append(3, "#")
				call append(4, "# Description: ---")
				call append(5, "#")
				call append(6, "#      Author: dqq - duan@hust.edu.cn")
				call append(7, "#     Created: ".strftime("%c"))
				call append(8, "#     Updated: ".strftime("%c"))
				call append(9, "#######################################################")
				call append(10, "")
		endif
		if &filetype == 'python'
				call setline(1,"# -*- coding:utf-8 -*-")
				call append(line("."),   "#######################################################")
				call append(line(".")+1, "#   File Name: ".expand("%"))
				call append(line(".")+2, "#")
				call append(line(".")+3, "# Description: ---")
				call append(line(".")+4, "#")
				call append(line(".")+5, "#      Author: dqq - duan@hust.edu.cn")
				call append(line(".")+6, "#     Created: ".strftime("%c"))
				call append(line(".")+7, "#     Updated: ".strftime("%c"))
				call append(line(".")+8, "#######################################################")
				call append(line(".")+9, "")
				call append(line(".")+10, "import sys")
				call append(line(".")+11, "import numpy as np")
				call append(line(".")+12, "import matplotlib.pyplot as plt")
		endif
		if &filetype == 'R'
				call setline(1, "#######################################################")
				call append(line("."), "#")
				call append(line(".")+1, "#   File Name: ".expand("%"))
				call append(line(".")+2, "#")
				call append(line(".")+3, "# Description: ---")
				call append(line(".")+4, "#")
				call append(line(".")+5, "#      Author: dqq - duan@hust.edu.cn")
				call append(line(".")+6, "#     Created: ".strftime("%c"))
				call append(line(".")+7, "#     Updated: ".strftime("%c"))
				call append(line(".")+8, "#######################################################")
				call append(line(".")+9, "")
		endif
		if &filetype == 'c'
				call setline(1, "/* ********************************************")
				call append(line("."), ">  File Name: ".expand("%"))
				call append(line(".")+1, ">Description: ---")
				call append(line(".")+2, ">     Author: dqq - duan@hust.edu.cn")
				call append(line(".")+3, ">    Created: ".strftime("%c"))
				call append(line(".")+4, ">    Updated: ".strftime("%c"))
				call append(line(".")+5, "******************************************** */")
				call append(line(".")+6, "")
				call append(line(".")+7, "#include<stdio.h")
				call append(line(".")+8, "")
		endif
		if &filetype == 'cpp'
				call setline(1, "/* *********************************************")
				call append(line("."), ">  File Name: ".expand("%"))
				call append(line(".")+1, ">Description: ---")
				call append(line(".")+2, ">     Author: dqq - duan@hust.edu.cn")
				call append(line(".")+3, ">    Created: ".strftime("%c"))
				call append(line(".")+4, ">    Updated: ".strftime("%c"))
				call append(line(".")+5, "********************************************* */")
				call append(line(".")+6, "")
				call append(line(".")+7, "#include<iostream>")
				call append(line(".")+8, "using namespace std;")
				call append(line(".")+9, "")
		endif
		if &filetype == 'java'
				call setline(1, "/* *********************************************")
				call append(line("."), ">  File Name: ".expand("%"))
				call append(line(".")+1, ">Description: ---")
				call append(line(".")+2, ">     Author: dqq - duan@hust.edu.cn")
				call append(line(".")+3, ">    Created: ".strftime("%c"))
				call append(line(".")+4, ">    Updated: ".strftime("%c"))
				call append(line(".")+5, "********************************************* */")
				call append(line(".")+6, "")
				call append(line(".")+7, "public class ".expand("%"))
				call append(line(".")+8, "")
		endif
		autocmd BufNewFile * normal G
endfunc
func SetUpdatedTimes9()
	let line = getline(9)
	let newtime = "#     Updated: ".strftime("%c")
	let update = substitute(line,".*$",newtime,"g")
	call setline(9,update)
endfunc
func SetUpdatedTimes6()
	let line = getline(6)
	let newtime = ">    Updated: ".strftime("%c")
	let update = substitute(line,".*$",newtime,"g")
	call setline(9,update)
endfunc
autocmd BufWrite *.py,*.sh,*.R call SetUpdatedTimes9()
autocmd BufWrite *.c,*.cpp,*.java call SetUpdatedTimes6()

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
vmap <C-c> +y

set autoread
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
set completeopt=preview,menu
filetype plugin on
set clipboard=unnamed
:set makeprg=g++\ -Wall\ \ %
set ruler
set cursorline
set confirm
set autoindent
set cindent
set statusline=%F%M%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
filetype on
filetype indent on
set backspace=2
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
		if getline('.')[col('.') - 1] == a:char
				return "\<Right>"
		else
				return a:char
		endif
endfunction
set completeopt=longest,menu
colorscheme molokai

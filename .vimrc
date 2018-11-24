syntax on
set number
set nocompatible
execute pathogen#infect()
filetype plugin indent on

"Open NerdTree when no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Close NerdTree on last file quit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Allow for mouse Click
set mouse=a
let g:NERDTreeMouseMode=3

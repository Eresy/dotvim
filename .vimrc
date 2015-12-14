set nocompatible

set encoding=utf8
try
    lang it_IT
catch
endtry
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types

set history=10000	" keep 10000 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" Display incomplete commands
set wildmenu		" and make simpler to cycle between them
set showmatch		" Show matching bracets when text indicator is over them

" execute pathogen#infect()

syntax on

" 
if &diff
	colorscheme jellybeans
else
colorscheme candycode
""different colorscheme for c,tex,haskell
autocmd FileType c colorscheme marco
autocmd FileType tex colorscheme marco
autocmd FileType haskell colorscheme HaskColors
endif
"
"autocmd FileType haskell setlocal  expandtab softtabstop=4 shiftwidth=4 shiftround  
"au BufWinEnter,BufRead,BufNewFile *.hs set filetype=haskell

autocmd BufReadPre $HOME/.xmobarrc set ft=haskell

"use pgsql syntax also for .sql files
let g:sql_type_default = 'pgsql'

"set concealcursor=nc
"set conceallevel=1

filetype plugin indent on

"  C indenting option

"set smartindent

set smartcase

"  Lisp option
"
set autoindent

let g:slimv_impl='clisp'

"  Search Option
"
set ignorecase 	"  Case insensitive

set incsearch	"  Incremental Search


" Opening Man Page in Vim: use Man foo
"
runtime! ftplugin/man.vim

nmap <F11> :tabprev <CR>
nmap <F12> :tabnext <CR>

map :Q :q <CR>
map :W :w <CR>

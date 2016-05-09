syntax on
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

set ffs=unix,dos,mac 	"Default file types
set history=10000	" keep 10000 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" Display incomplete commands
set wildmenu		" and make simpler to cycle between them
set showmatch		" Show matching bracets when text indicator is over them
set ignorecase		" Ignore case when searching
set smartcase		" When searching try to be smart about cases 
set ignorecase	 	"  Case insensitive
set incsearch		"  Incremental Search
set smartindent
set autoindent
set wrap		 "Wrap lines
" execute pathogen#infect()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
"set laststatus=2
" Format the status line
"set statusline=\ %%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

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

" Set filetype used on a filename basis
autocmd BufReadPre $HOME/.xmobarrc set ft=haskell

"use pgsql syntax also for .sql files
let g:sql_type_default = 'pgsql'

"Activated in .vim/ftplugin based on .extension
"set concealcursor=nc
"set conceallevel=1

filetype plugin indent on

"  Lisp option
let g:slimv_impl='clisp'

" Opening Man Page in Vim: use Man foo
runtime! ftplugin/man.vim

nmap <F11> :tabprev <CR>
nmap <F12> :tabnext <CR>
map :Q :q <CR>
map :W :w <CR>

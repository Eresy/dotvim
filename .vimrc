set nocompatible

set history=10000	" keep 10000 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

set showmatch		"Show matching bracets when text indicator is over them

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
"set laststatus=2
syntax on

colorscheme candycode
autocmd FileType c colorscheme marco 
autocmd FileType tex colorscheme marco 

""change colorscheme when invoked as vimdiff"
"if &diff
"	colorscheme 
"endif
""

"autocmd FileType * if &filetype == 'python' | colorscheme jellybeans | else | colorscheme wombat256 | endif

"inoremap = <space>=<space>
"inoremap + <space>+<space>
"inoremap == ==
"inoremap != !=
"inoremap >= >=
"inoremap <= <=
"inoremap ++ ++ 

"colorscheme marco

if &diff
	colorscheme jellybeans
endif

"  Enabling Latex-suite addon

"let g:tex_flavor='tex'

filetype plugin indent on

"  C indenting option

set smartindent

set smartcase

"  Lisp option
"
"set autoindent

"let g:slimv_impl='clisp'

"  Search Option
"
set ignorecase 	"  Case insensitive

set incsearch	"  Incremental Search


" Opening Man Page in Vim: use Man foo
"
runtime! ftplugin/man.vim

nmap <F11> :tabprev <CR>
nmap <F12> :tabnext <CR>

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


map :Q :q <CR>
map :W :w <CR>

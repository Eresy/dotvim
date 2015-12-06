" Vim color file
" Mantainer: Marco Bucchiarone
" Last Modified: 2011-11-30

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors


"							*cterm-colors*
"    NR-16   NR-8    COLOR NAME ~
"    0	    0	    Black
"    1	    4	    DarkBlue
"    2	    2	    DarkGreen
"    3	    6	    DarkCyan
"    4	    1	    DarkRed
"    5	    5	    DarkMagenta
"    6	    3	    Brown, DarkYellow
"    7	    7	    LightGray, LightGrey, Gray, Grey
"    8	    0*	    DarkGray, DarkGrey
"    9	    4*	    Blue, LightBlue
"    10	    2*	    Green, LightGreen
"    11	    6*	    Cyan, LightCyan
"    12	    1*	    Red, LightRed
"    13	    5*	    Magenta, LightMagenta
"    14	    3*	    Yellow, LightYellow
"    15	    7*	    White
"
"
"

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="marco"

" color terminal definitions
hi SpecialKey    ctermfg=darkgreen
hi NonText       cterm=bold ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg      cterm=bold ctermfg=7 ctermbg=1
hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
" hi Search        cterm=NONE ctermfg=grey ctermbg=blue
hi Search        ctermfg=0 ctermbg=6 cterm=bold 
hi MoreMsg       ctermfg=darkgreen
hi ModeMsg       cterm=bold ctermfg=darkred
hi LineNr        ctermfg=3
hi Question      ctermfg=green
hi StatusLine    cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit     cterm=reverse
hi Title         ctermfg=5
hi Visual        ctermfg=black ctermbg=white cterm=bold
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu      ctermfg=0 ctermbg=3
hi Folded        ctermfg=darkgrey ctermbg=NONE
hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
hi DiffAdd       ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText      cterm=bold ctermbg=1
hi Comment       ctermfg=cyan
hi Constant      ctermfg=red
hi Special       ctermfg=5 cterm=bold
hi Identifier    ctermfg=6
hi Statement     ctermfg=3 cterm=bold
hi PreProc       ctermfg=5 cterm=bold
hi Type          ctermfg=2 cterm=bold
hi Underlined    cterm=underline ctermfg=5
hi Ignore        ctermfg=darkgrey
hi Error         cterm=bold ctermfg=7 ctermbg=1
hi TabLineSel 	 cterm=bold ctermfg=1 ctermbg=0
hi TabLine       ctermfg=2  ctermbg=0
hi TabLineFill   cterm=NONE

" highlight for the GUI
hi Normal	guifg=White guibg=Black
" highlight groups
hi Cursor	guibg=khaki guifg=slategrey
"hi CursorIM	
"hi Directory	
"hi DiffAdd				
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi ErrorMsg	
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold 
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
"hi LineNr				
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=Blue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=darkred gui=bold
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=red
hi Visual	gui=none guifg=white guibg=olivedrab
"hi VisualNOS	
hi WarningMsg	guifg=salmon
"hi WildMenu	
"hi Menu				
"hi Scrollbar	
"hi Tooltip				

" syntax highlighting groups
hi Comment	 guifg=cyan
hi Constant	 guifg=#ff0000
hi Identifier	 guifg=palegreen
hi Statement	 guifg=gold gui=bold
hi PreProc	 guifg=magenta
hi Type		 guifg=green gui=bold
hi Special	 guifg=navajowhite
"hi Underlined	
hi Ignore 	 guifg=grey40
"hi Error			
hi Todo		 guifg=orangered guibg=yellow2


"vim: sw=4

"			G E N E R A L
"automatic reloading of .vimrc...works?
autocmd! bufwritepost .vimrc source %

" spell checker mapped to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

"copy and pasting 
set clipboard=unnamedplus

"mouse and backspace
set mouse=a

"show line numbers
set number

"ignore the case when searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"set autoindentation
set ai

"turn syntax on?
syntax on

"enable code folding
set foldmethod=syntax
set foldnestmax=10
set foldlevel=2

"make easy to move blocks of code. can move multiple times with single
"selection.
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

"set the amount of steps to be remembered
set history=700
set undolevels=700

"If wrapscan is set, and the word is not found at the bottom of the file, it
"will try searching for it at the beginning
set ws

"turn on relative numbers
"set relativenumber

"Configuring vim to map the escape sequences to their Alt
"combinations Alt-letter will now be recognised by vi in a terminal. 
let c='a'
while c <= 'z'
	  exec "set <A-".c.">=\e".c
	  exec "imap \e".c." <A-".c.">"
	  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

      
" 			P A T H O G E N 

:set autoindent
:set cindent
execute pathogen#infect()

execute pathogen#infect()
syntax on
filetype plugin indent on

" 			C T R L - P	

set runtimepath^=~/.vim/bundle/ctrlp.vim

"			V I M  -  L A T E X

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
"
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"
" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults
 
"to 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"			S O L A R I Z E D
"set t_Co=256
"syntax enable
"set background=dark
"colorscheme solarized

"			S Y N T A S T I C
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"		P Y T H O N
"make python look pretty
let python_highlight_all=1
syntax on

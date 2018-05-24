" color scheme of the moment:
syntax on

colorscheme desert

"copy and pasting 
set clipboard=unnamedplus

" spell checker mapped to F12
map <F12> :setlocal spell! spelllang=en_us<CR>

"mouse and backspace
set mouse=a

set guioptions=0

"turn on spell check automatically
au BufRead * setlocal spell

"allows pressing ctrl-n or ctrl-p in insert mode to complete the word being
"typed
set complete+=kspell

set guifont=DejaVu\ Sans\ Mono\ 12

"set tab size to 4 spaces (default is 8)
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

"show line numbers
set number

"show relative line numbers
set relativenumber

"ignore the case when searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"set autoindentation
set autoindent

"make a line underneath the cursor
set cursorline
hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

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
" Also required for vim instant markdown plugin
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

""			S Y N T A S T I C
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"		P Y T H O N
"make python look pretty
let python_highlight_all=1
syntax on

"Make calcurse notes markdown compatible:
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

"Allow for R markdown compilation in vim with f5
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

" tell vim instant markdown not to open firfox tab automatically
" manually turn on with :InstantMarkdownPreview
let g:instant_markdown_autostart = 0
set timeout ttimeoutlen=50

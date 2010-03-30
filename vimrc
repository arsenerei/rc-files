" general tweaks
set nocompatible
set ruler
set wildmenu
set backspace=indent,eol,start
set number
set nomore
set ignorecase
set viminfo='100,f1

set foldlevel=100
set foldmethod=syntax

set backupdir=$HOME/.vim.backupdir " where .swp files go (I think) 

inoremap # X#

syntax enable
filetype on
filetype plugin on
filetype indent on

set ai
set ls=2

"set list
"set listchars=tab:\|\ 

" stop windows from resizing upon closing other windows
set winfixwidth
set winfixheight

set ts=4
set sw=4
set wrap linebreak textwidth=0

" term colors
if &t_Co > 255
	set t_Co=256
	colorscheme inkpot
else
	set t_Co=16
	hi Search ctermbg=DarkGrey
	hi LineNr ctermbg=Black
endif

" search formating
" highlight search
set hlsearch
" incremental searching
set incsearch
" search highlighting
nnoremap <silent> <Space> :nohl<CR><C-L>

set errorformat=%f:%l:%m

"command -nargs=* Make make <args> | cwindow 3
map <Leader>j :Make<cr>

syn sync minlines=50
syn sync fromstart
map ,# :s/^/#/<CR>

" mouse support
set mouse=a
set ttymouse=xterm2

" code cleaning
nnoremap <Leader>c :%s/\s\+$//<CR><C-L>

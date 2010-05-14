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

"set backupdir=$HOME/.vim.backupdir " where .swp files go (I think) 

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

nnoremap <silent> <Leader>r  :resize 17<CR>
"nnoremap <silent> <Leader>=  :resize =<CR>

set ts=4
set sw=4
set wrap linebreak textwidth=0
set so=5 " no more scrolling from the bottom

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

map <Leader>j :Make<CR>

syn sync minlines=50
syn sync fromstart
map ,# :s/^/#/<CR>

" mouse support
set mouse=a
set ttymouse=xterm2

" code cleaning
nnoremap <Leader>c :%s/\s\+$//<CR><C-L>

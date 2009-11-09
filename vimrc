" general tweaks
set nocompatible
set ruler
set wildmenu
set backspace=indent,eol,start
set number
set nomore
set ignorecase

set foldlevel=100
set foldmethod=indent

"set backupdir=$HOME/.vim.backupdir  

inoremap # X#

syntax enable

set ai
set ls=2

"set list
"set listchars=tab:\|\ 

set ts=4

" term colors
set t_Co=16
hi Search ctermbg=DarkGrey
hi LineNr ctermbg=Black

" search formating
" highlight search
set hlsearch
" incremental searching
set incsearch
" search highlighting
nnoremap <Space> :nohl<CR><C-L>

set errorformat=%f:%l:%m

command -nargs=* Make make <args> | cwindow 3
map <Leader>j :Make<cr>

syn sync minlines=50
syn sync fromstart
map ,# :s/^/#/<CR>

" mouse support
set mouse=a
set ttymouse=xterm2

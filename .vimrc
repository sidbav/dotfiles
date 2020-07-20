syntax on

let mapleader=" " " remapping leader key
nmap <leader>q :q<ENTER>
nmap <leader>w :w<ENTER>
nmap <leader>W :wq<ENTER>

set backspace=indent,eol,start

set tabstop=2 softtabstop=2
set shiftwidth=2
set list listchars=tab:->,trail:·
set expandtab
set incsearch
set number
set numberwidth=5
set smartcase
set ignorecase
set hlsearch
set smartindent
set noerrorbells
set noswapfile

set colorcolumn=80
highlight ColorColumn term=reverse ctermbg=1 guibg=DarkRed

imap jj <Esc>

colorscheme desert

" Reload files modified outside vim
set autoread

" Better command-line completion
set wildmenu

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set tags=tags;/
set laststatus=2

" StatusBar
set statusline=
set statusline=\ %m " modified
set statusline+=\ %r "readonly ? 
set statusline+=\%y "filetype
set statusline+=\ %F "full path
set statusline+=%= "Right side settings
set statusline+=Line
set statusline+=\ %l
set statusline+=\ of
set statusline+=\ %L\,
set statusline+=\ %P

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'

call plug#end()

" Vertical Bar
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=1\x7"
endif

" Spell check
set spell spelllang=en

" Remove the directory banner in when opening file explore in vim
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
nmap <leader>f :Vex<Enter>

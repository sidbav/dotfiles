call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tomasiser/vim-code-dark'

call plug#end()

let mapleader=" " " remapping leader key
nmap <leader>q :qa<ENTER>
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
set autoindent
set noerrorbells
set noswapfile

set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#222222

" Reload files modified outside vim
set autoread

" Better command-line completion
set wildmenu

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set ruler
set tags=tags;/
set laststatus=2
set showtabline=2

colorscheme codedark
" Needed so that the colorscheme works correctly in vim
set background=dark
set t_Co=256

" Spell check
nmap <leader>s :set spell spelllang=en_ca<Enter>

" Remove the directory banner in when opening file explore in vim
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
nmap <leader>f :Lex<Enter>

" Spell check for markdown
augroup markdownSpell
    autocmd!
    autocmd FileType markdown setlocal spell
    autocmd BufRead,BufNewFile *.md setlocal spell
augroup END

" Center screen when entering insert mode
augroup autoCenter
  autocmd!
  autocmd InsertCharPre,InsertEnter * if (winline() * 3 >= (winheight(0) * 2))
                                            \| norm! zz
                                        \| endif
augroup END

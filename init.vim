call plug#begin('~/.vim/plugged')

Plug 'tomasiser/vim-code-dark'

call plug#end()

let mapleader=" " " remapping leader key
nmap <leader>q :qa<ENTER>
nmap <leader>w :botright vnew<ENTER>

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

set background=dark
set t_Co=256
colorscheme codedark

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

set linebreak

" Primagean Recommendations
" Keep search centered
nnoremap n nzzzv
nnoremap N Nzzzv

" Dont undo an entire line
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap ) )<c-g>u
inoremap ( (<c-g>u

" Better indent stuff
vnoremap < <gv
vnoremap > >gv

" Moving the highlighted area of the code 
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


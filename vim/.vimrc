" COMMON  -------------------------------------------------------------- {{{
execute pathogen#infect()
syntax on
set encoding=utf-8
set hlsearch
set incsearch
set scrolloff=5
set ignorecase
set visualbell
set number
set smartcase
set showmode
set clipboard=unnamed
set number
set relativenumber

filetype on
filetype plugin on
filetype indent on
autocmd BufWrite * set nobomb

set nocompatible
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set nowritebackup
set showcmd
set showmatch
set history=1000

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

map H ^
map L $
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap Q @q

nnoremap vv V
nnoremap V <C-V>$

" }}}

" PLUGINS -------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
 	Plug 'preservim/nerdtree', { 'on': 'NERDTreeFocus' }
	Plug 'chaoren/vim-wordmotion'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'vim-airline/vim-airline'

    Plug 'doums/darcula'
call plug#end()

" backgroup stuff
set background=dark
colorscheme darcula
set termguicolors

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']
" }}}

" MAPPINGS -------------------------------------------------------------- {{{
let mapleader=" "
nnoremap Y y$
nnoremap <leader>p :NERDTreeFocus<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{
" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" BASE -------------------------------------------------------------- {{{
" }}}

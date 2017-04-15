"VUNDLE [START]
set nocompatible          
filetype off             

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle Plugins [START]
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'sjl/badwolf'
Plugin 'sjl/gundo.vim'
"Vundle Plugins [END]

call vundle#end()  
filetype plugin indent on
"VUNDLE [END]

"NERDTree [START]
autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
"NERDTree [END]

"NumberToggle [START]
let g:NumberToggleTrigger="<F1>"
"NumberToggle[END]

colorscheme badwolf " fav <3 

syntax enable " duh

set tabstop=4 " number of visual spaces per TAB

set softtabstop=4 " number of spaces in tab when editing

set expandtab " tabs are spaces

set number " show line numbers

set showcmd " show command in bottom bar

set cursorline " highlight current line

filetype indent on " load filetype-specific indent

set wildmenu

set lazyredraw

set showmatch

set incsearch
set hlsearch

let mapleader=","

nnoremap <leader><space> :nohlsearch<CR>

nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

nnoremap <leader>u :GundoToggle<CR>

"Python
nmap ,p :w<CR>:!python3 %<CR>

"C++
nmap ,c :w<CR>:!make %<CR>

"Toggle copy pasting
set pastetoggle=<F2>

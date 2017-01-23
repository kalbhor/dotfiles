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
    "Vundle Plugins [END]

    call vundle#end()  
    filetype plugin indent on
"VUNDLE [END]

"~(o.o)~ 

"NERDTree [START]
    autocmd StdinReadPre * let s:std_in=1

    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
    map <C-n> :NERDTreeToggle<CR>
"NERDTree [END]

"NumberToggle [START]
    let g:NumberToggleTrigger="<F1>"
"NumberToggle[END]

"~(o.o)~


" enable syntax highlighting
    syntax enable

" set tabs to have 4 spaces
    set ts=4

" indent when moving to the next line while writing code
    set autoindent

" expand tabs into spaces
    set expandtab

" when using the >> or << commands, shift lines by 4 spaces
    set shiftwidth=4

" show a visual line under the cursor's current line
    set cursorline

" show the matching part of the pair for [] {} and ()
    set showmatch

"Toggle copy pasting
    set pastetoggle=<F2>

set nocompatible 
filetype off

"Vundle - Package manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'

set hlsearch "highlight searched things
set incsearch "incremental search
set laststatus=2 "show status line
set ignorecase "ignore case
set textwidth=0 
set cursorline
set autoread "auto read when file is changed from outside
set ruler "show current position
set nu "show line number
set showmatch "show maching braces
set shiftwidth=4
set tabstop=4
set mouse=a "enable mouse
set encoding=utf-8 
set background=dark

syntax enable
"let g:solarized_termcolors = 256
"let g:solarized_visibility = 'high'
"let g:solarized_contrast = 'high'
colorscheme solarized
colorscheme molokai

"keymaps
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"ctr+p
set runtimepath^=~/.vim/bundle/ctrlp.vim

"vim powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols_override = {
        \ 'BRANCH': [0x2213],
        \ 'LINE': 'L',
        \ }

"NerdTree Stuff
autocmd VimEnter * NERDTree "Open Nerdtree at startup
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$','\.png'] "Ignore file types
let g:NERDTreeChDirMode=2 "When open folder on nerdtree move to the folder
map <C-n>n :NERDTreeToggle<CR> "Open/Close nerdtree 
let NERDTreeShowBookmarks=1 "Display bookmarks at startup

"TagBar
map <C-n>t :TagbarToggle<cr>


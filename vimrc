set nocompatible
set shell=/usr/local/bin/fish

"Vundle - Package manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"vim +BundleInstall +qall

Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'dterei/VimBookmarking'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'amdt/vim-niji'
Bundle 'vim-scripts/fish-syntax'
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bronson/vim-trailing-whitespace'

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
set shiftwidth=2
set tabstop=2
set encoding=utf-8
set background=dark
"set mouse=a "enable mouse

syntax enable
"colorscheme molokai
colorscheme solarized
filetype plugin indent on

"keymaps
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"ctr+p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Bookmarks
"map <D><F2> :ToggleBookmark<cr>
"map <C-m>n :NextBookmark<cr>
"map <C-m>b :PreviousBookmark<cr>

"NerdTree Stuff
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$','\.png'] "Ignore file types
map <C-n>n :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1 "Display bookmarks at startup
let g:NERDTreeChDirMode=2 "When open folder on nerdtree move to the folder

set nocompatible 
filetype off

"Vundle - Package manager
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"vim +BundleInstall +qall

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree' 
Bundle 'ervandew/supertab' 
Bundle 'majutsushi/tagbar' 
Bundle 'kien/ctrlp.vim' 
Bundle 'tpope/vim-fugitive' 
Bundle 'mileszs/ack.vim' 
Bundle 'dterei/VimBookmarking' 

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
"set mouse=a "enable mouse
set encoding=utf-8 
set background=dark

syntax enable
colorscheme molokai

"keymaps
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
map <C>l :set list<cr>
map <C-n>g :Grep<cr>

"ctr+p
set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-n>b :CtrlPBuffer<cr>

"vim powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols_override = {
        \ 'BRANCH': [0x2213],
        \ 'LINE': 'L',
        \ }

"TagBar
map <C-n>t :TagbarToggle<cr>
let g:tagbar_left=1

"Bookmarks
map <C-m> :ToggleBookmark<cr>
map <C-m>n :NextBookmark<cr>
map <C-m>b :PreviousBookmark<cr>

"NerdTree Stuff
"autocmd VimEnter * NERDTree "Open Nerdtree at startup
"autocmd TabEnter * NERDTree "Open Nerdtree at startup
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$','\.png'] "Ignore file types
let g:NERDTreeChDirMode=2 "When open folder on nerdtree move to the folder
map <C-n>n :NERDTreeToggle<CR> 
let NERDTreeShowBookmarks=1 "Display bookmarks at startup

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction


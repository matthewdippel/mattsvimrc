" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
" Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on " load filetype specific indentation details
syntax on
colorscheme molokai_dark " color scheme choice

set tabstop=4 " number of spaces used to visually display TAB
set softtabstop=4 " number of spaces a tab counts for when editting, number inserted
set shiftwidth=4 " when indenting with >, use 4 spaces width
set expandtab " tabs are now inserted as spaces

set number " show line numbers

set showcmd "show last command in bottom right

set cursorline " highlights current line

set showmatch " highlight matching [{()}]

set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight with ,<space>
nnoremap <leader><space> :nohlsearch<CR> 
let mapleader=","

function! ToggleNumber()
        if(&relativenumber == 1)
                set norelativenumber
                set number
        else
                set relativenumber
        endif
endfunc

" let g:netrw_banner = 0
" let g:netrw_keepdir = 1
" let g:netrw_liststyle = 3 "or 1

" browse split options:
" 1 - open in horz split
" 2 - open in vert split
" 3 - open in new tab
" 4 - open in prev window
" let g:netrw_browse_split = 4 

" set percentage of explorer window
" let g:netrw_winsize = 25
" let g:netrw_sort_options = 'i'
" augroup ProjectDrawer
  " autocmd!
  " autocmd VimEnter * :Vexplore
" augroup END

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_flake8_exec = 'python2'
" let g:syntastic_python_flake8_args = ['-m', 'flake8']
let loaded_netrwPlugin = 1

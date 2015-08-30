set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'ddollar/nerdcommenter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Raimondi/delimitMate'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'nathanealkane/vim-indent-guides'
" Plugin 'garbas/vim-snipmate'
" Plugin 'magutsushi/tagbar'

" Plugins need to be added before this line
call vundle#end()
filetype plugin indent on

" Terminal settings
set mouse=a
set t_Co=256
set clipboard=unnamed
set background=dark
syntax on
" let g:molokai_termcolors=256
" let g:molokai_visibility = "high"
" let g:molokai_contrast = "high"
" let g:molokai_termtrans = 1

" highlight nonText ctermbg=None

colorscheme seti


syntax enable
set number

set nowrap

set hlsearch
" Ruby mode
" autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=3 tabstop=2
autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype slim setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype coffee setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

" Leader
let mapleader = ","

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Get rid of colorscheme bg
syntax enable
highlight Normal ctermbg=None

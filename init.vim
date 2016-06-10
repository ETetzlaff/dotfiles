"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/evantetzlaff/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/evantetzlaff/.config/nvim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('flazz/vim-colorschemes')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('honza/vim-snippets')
call dein#add('slim-template/vim-slim')
call dein#add('tpope/vim-haml')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('Raimondi/delimitMate')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tpope/vim-rails')
call dein#add('vim-ruby/vim-ruby')
call dein#add('ddollar/nerdcommenter')
call dein#add('scrooloose/syntastic.git')
call dein#add('scrooloose/nerdtree.git')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('vim-airline/vim-airline')
call dein#add('ryanoasis/vim-devicons')
call dein#add('janko-m/vim-test')


" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
set nocompatible
filetype off

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

set noswapfile

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h11

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
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>

" Get rid of colorscheme bg
syntax enable
highlight Normal ctermbg=None


" MySQL
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=zip_codes'
let g:dbext_default_profile = 'mysql_local'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

" Airline
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>[ <Plug>AirlineSelectPrevTab
nmap <leader>] <Plug>AirlineSelectNextTab

" Vim Test
let test#strategy = "neovim"
let g:test#preserve_screen = 1

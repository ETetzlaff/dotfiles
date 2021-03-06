"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.config/nvim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('flazz/vim-colorschemes')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('honza/vim-snippets')
call dein#add('slim-template/vim-slim')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('Raimondi/delimitMate')
call dein#add('tpope/vim-rails')
call dein#add('vim-ruby/vim-ruby')
call dein#add('ddollar/nerdcommenter')
call dein#add('scrooloose/syntastic.git')
call dein#add('scrooloose/nerdtree.git')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-airline/vim-airline')
call dein#add('ryanoasis/vim-devicons')
call dein#add('janko-m/vim-test')
call dein#add('robbles/logstash')
call dein#add('fatih/vim-go')
call dein#add('pangloss/vim-javascript')
call dein#add('isRuslan/vim-es6')
call dein#add('diepm/vim-rest-console')
call dein#add('easymotion/vim-easymotion')
call dein#add('ervandew/supertab')
call dein#add('aserebryakov/vim-todo-lists')
call dein#add('JamshedVesuna/vim-markdown-preview')
call dein#add('stephpy/vim-yaml')
call dein#add('uarun/vim-protobuf')
call dein#add('christoomey/vim-tmux-runner')
call dein#add('prabirshrestha/async.vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('ryanolsonx/vim-lsp-python')
call dein#add('vimwiki/vimwiki')

call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim')

call dein#add('neovim/nvim-lsp')
:lua << END
  require'nvim_lsp'.pyls.setup{}
END

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

" Python Support
let g:python_host_prog = '/usr/bin/python2.7'

set noswapfile

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h11
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h11
" set guifont=Inconsolata\ LGC\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono:h11

" colorscheme molokai
colorscheme seti
" colorscheme solarized-dark
" colorscheme ThemerVim

syntax enable
set number

set nowrap

set hlsearch
" Ruby mode
" autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=3 tabstop=2
autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype slim setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd Filetype coffee setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 autoindent
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 expandtab smarttab shiftwidth=2
autocmd Filetype rest setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype conf setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype vimwiki setlocal tabstop=2 shiftwidth=2 softtabstop=2
" setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

" PEP-8 Ruler for .py files
autocmd FileType python setlocal colorcolumn=79

autocmd BufNewFile,BufRead *.slim set ft=slim

" Leader
let mapleader = ","

nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
nnoremap <leader>gr :GoRun<CR>
nnoremap <leader>gt :GoTest<CR>
nnoremap <leader>god :GoDef<CR>

nnoremap <C-p> :GFiles<CR>


" Get rid of colorscheme bg
syntax enable
highlight Normal ctermbg=None


" MySQL
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=zip_codes'
let g:dbext_default_profile = 'mysql_local'

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

" Vim Go Test
nmap <silent> <leader>got :GoTest<CR>
nmap <silent> <leader>gotf :GoTestFunc<CR>

let g:vrc_allow_get_request_body = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" JSON Formatter
com! FormatJSON %!python -m json.tool

" vim-markdown things
let vim_markdown_preview_hotkey='<C-j>'
let vim_markdown_preview_browser='Google Chrome'


" vim-tmux-runner setup
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>vl :VtrSendLinesToRunner<cr>
vnoremap <leader>vl :VtrSendLinesToRunner<cr>
" nnoremap <leader>ror :VtrReorientRunner<cr>
" nnoremap <leader>sc :VtrSendCommandToRunner<cr>
" nnoremap <leader>or :VtrOpenRunner<cr>
" nnoremap <leader>kr :VtrKillRunner<cr>
" nnoremap <leader>fr :VtrFocusRunner<cr>
" nnoremap <leader>dr :VtrDetachRunner<cr>
" nnoremap <leader>cr :VtrClearRunner<cr>
" nnoremap <leader>fc :VtrFlushCommand<cr>
" nnoremap <leader>sf :VtrSendFile<cr>


"""" VIM-LSP Python
" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ })
" endif

" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> <f2> <plug>(lsp-rename)
"     " refer to doc to add more commands
" endfunction

" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END

nnoremap <leader>ld  <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <leader>ld :LspDeclaration<CR>
nnoremap <leader>lr :LspReferences<CR>
nnoremap <leader>lca :LspCodeAction<CR>

" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

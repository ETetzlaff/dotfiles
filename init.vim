lua require 'init'

"dein Scripts-----------------------------
" if &compatible
"   set nocompatible               " Be iMproved
" endif

" " Required:
" set runtimepath^=/home/evan/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" " Required:
" call dein#begin(expand('/home/evan/.config/nvim/dein'))

" " Let dein manage dein
" " Required:
" call dein#add('Shougo/dein.vim')

" " Add or remove your plugins here:
" call dein#add('flazz/vim-colorschemes')
" call dein#add('christoomey/vim-tmux-navigator')
" call dein#add('christoomey/vim-tmux-runner')
" call dein#add('vim-airline/vim-airline')
" call dein#add('diepm/vim-rest-console')
" call dein#add('vimwiki/vimwiki')
" call dein#add('easymotion/vim-easymotion')
" call dein#add('ryanoasis/vim-devicons')
" call dein#add('slim-template/vim-slim')
" call dein#add('bronson/vim-trailing-whitespace')
" call dein#add('Raimondi/delimitMate')
" call dein#add('ddollar/nerdcommenter')
" call dein#add('preservim/nerdtree')
" call dein#add('scrooloose/syntastic.git')
" call dein#add('airblade/vim-gitgutter')
" call dein#add('tpope/vim-fugitive')
" call dein#add('robbles/logstash')
" call dein#add('fatih/vim-go')
" call dein#add('pangloss/vim-javascript')
" call dein#add('isRuslan/vim-es6')
" call dein#add('ervandew/supertab')
" call dein#add('hashivim/vim-terraform')
" call dein#add('stephpy/vim-yaml')
" call dein#add('rust-lang/rust.vim')
" call dein#add('RishabhRD/popfix')
" call dein#add('RishabhRD/nvim-cheat.sh')
" call dein#add('bfrg/vim-cpp-modern')
" " call dein#add('dbeniamine/cheat.sh-vim')

" call dein#add('nvim-lua/popup.nvim')
" call dein#add('nvim-lua/plenary.nvim')
" call dein#add('nvim-telescope/telescope.nvim')

" call dein#add('neovim/nvim-lspconfig')

" :lua << END
"   require'lspconfig'.pyls.setup{}
"   require'lspconfig'.solargraph.setup{}
" END
"   " require'lspconfig'.sumneko_lua.setup{}

" call dein#add('junegunn/fzf', {'build': './install'})
" call dein#add('junegunn/fzf.vim')

" :set relativenumber

" " call dein#add('neoclide/coc.nvim', {'merged':0, 'rev':'release'})

" " You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" " Required:
" call dein#end()

" " Required:
" filetype plugin indent on

" " If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

" "End dein Scripts-------------------------
" set nocompatible
" filetype off

" filetype plugin indent on

" " Terminal settings
" set mouse=a
" set t_Co=256
" set clipboard=unnamed
" set background=dark
" syntax on
" " let g:molokai_termcolors=256
" " let g:molokai_visibility = "high"
" " let g:molokai_contrast = "high"
" " let g:molokai_termtrans = 1

" " highlight nonText ctermbg=None

" " Python Support
" let g:python_host_prog = '/usr/bin/python'

" set noswapfile

" set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ Complete:h11
" " set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h11
" " set guifont=Inconsolata\ LGC\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono:h11

" colorscheme seti

" syntax enable
" set number

" set nowrap

" set hlsearch
" " Ruby mode
" " autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=3 tabstop=2
" autocmd Filetype ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd Filetype lua setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd Filetype html setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd Filetype eruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd Filetype slim setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd Filetype coffee setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
" autocmd FileType go setlocal noexpandtab shiftwidth=4 tabstop=4 autoindent
" autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 expandtab smarttab shiftwidth=2
" autocmd Filetype rest setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd Filetype conf setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd Filetype json setlocal tabstop=2 shiftwidth=2 softtabstop=2
" " setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2

" " Leader
" let mapleader = ","

" nnoremap <leader>bd :bd<CR>

" nmap <leader>sd <Plug>(coc-definition)
" nmap <leader>sr <Plug>(coc-references)
" let g:go_version_warning = 0
" let g:coc_disable_startup_warning = 1

" " nnoremap <C-p> :Files<CR>

" nnoremap <leader>gs :Gstatus<CR>
" nnoremap <leader>gb :Gblame<CR>
" nnoremap <leader>gd :Gdiff<CR>
" nnoremap <leader>n :NERDTree<CR>
" nnoremap <leader>w :w<CR>
" nnoremap <leader>q :q<CR>
" nnoremap <leader>wq :wq<CR>
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" " nnoremap <C-H> <C-W><C-H>
" " Not sure why I'm needing to do this
" verbose nmap <C-h>
" nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" nnoremap <leader>gr :GoRun<CR>
" nnoremap <leader>gt :GoTest<CR>

" " Get rid of colorscheme bg
" syntax enable
" highlight Normal ctermbg=None


" " MySQL
" let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=:dbname=zip_codes'
" let g:dbext_default_profile = 'mysql_local'

" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "snips"]

" " Airline
" set encoding=utf8
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#show_splits = 0
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" nmap <leader>1 <Plug>AirlineSelectTab1
" nmap <leader>2 <Plug>AirlineSelectTab2
" nmap <leader>3 <Plug>AirlineSelectTab3
" nmap <leader>4 <Plug>AirlineSelectTab4
" nmap <leader>5 <Plug>AirlineSelectTab5
" nmap <leader>6 <Plug>AirlineSelectTab6
" nmap <leader>7 <Plug>AirlineSelectTab7
" nmap <leader>8 <Plug>AirlineSelectTab8
" nmap <leader>9 <Plug>AirlineSelectTab9
" nmap <leader>[ <Plug>AirlineSelectPrevTab
" nmap <leader>] <Plug>AirlineSelectNextTab

" " Vim Ruby Test
" let test#strategy = "neovim"
" let g:test#preserve_screen = 1
" nmap <silent> <leader>tn :TestNearest<CR>
" nmap <silent> <leader>tf :TestFile<CR>
" nmap <silent> <leader>ts :TestSuite<CR>
" nmap <silent> <leader>tl :TestLast<CR>
" nmap <silent> <leader>tv :TestVisit<CR>

" " Vim Go Test
" nmap <silent> <leader>got :GoTest<CR>
" nmap <silent> <leader>gotf :GoTestFunc<CR>

" autocmd BufNewFile,BufRead *.slim set ft=slim

" let g:vrc_allow_get_request_body = 1


" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" " Set ultisnips triggers
" " let g:UltiSnipsExpandTrigger="<tab>"
" " let g:UltiSnipsJumpForwardTrigger="<tab>"
" " let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " JSON Formatter
" com! FormatJSON %!python -m json.tool

" let g:VtrStripLeadingWhitespace = 0
" let g:VtrClearEmptyLines = 0
" let g:VtrAppendNewline = 1

" nnoremap <leader>va :VtrAttachToPane<CR>
" nnoremap <leader>vl :VtrSendLinesToRunner<CR>
" vnoremap <leader>vl :VtrSendLinesToRunner<CR>
" nnoremap <leader>vs :VtrSendCommandToRunner<CR>
" vnoremap <leader>vs :VtrSendCommandToRunner<CR>

" nnoremap <leader>ld <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <leader>lr <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent>ls <cmd>lua vim.lsp.buf.signature_help()<CR>
" " nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" " nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" " nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
" " nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" " nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" " nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" " nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" " nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" " nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" "

" " nnoremap <leader><C-p> :GFiles<CR>
" " nnoremap <C-p> :Telescope git_files<CR>
" nnoremap <C-p> :Telescope file_browser<CR>

" " command! Scratch lua require'tools'.makeScratch()
" " command! Comment lua require'nerdcommenter'.get_file_type()
" nnoremap <leader>sv :source $MYVIMRC<CR>
" " nnoremap <leader>sc :Comment<CR>

" function! s:executor() abort
"         if &ft == 'lua'
"                 call execute(printf(":lua %s", getline(".")))
"         elseif &ft == 'vim'
"                 exe getline(">")
"         endif
" endfunction
" nnoremap <leader>x :call <SID>executor()<CR>

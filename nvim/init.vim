set clipboard+=unnamedplus

" Plugins
filetype off
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'gruvbox-community/gruvbox' 
Plug 'lifepillar/vim-solarized8.vim'
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'romainl/vim-cool' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' 
Plug 'tmhedberg/SimpylFold'
Plug 'tommcdo/vim-lion' 
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug '/lightline-gruvbox.vim'
Plug 'neevparikh/lightline-gruvbox.vim'
Plug 'simnalamburt/vim-mundo'
Plug 'unblevable/quick-scope'
Plug 'wellle/targets.vim'
Plug 'unblevable/quick-scope'
Plug 'bfredl/nvim-miniyank'
Plug 'machakann/vim-highlightedyank'
Plug 'airblade/vim-rooter'

call plug#end()
filetype indent plugin on

" Vimtex
let g:vimtex_fold_enabled = 1 
let g:vimtex_format_enabled = 1

let g:rooter_manual_only = 1
let g:rooter_silent_chdir = 1

let g:coc_global_extensions = [
            \ 'coc-snippets', 
            \ 'coc-vimlsp',
            \ 'coc-dictionary',
            \ 'coc-word',
            \ 'coc-syntax',
            \ 'coc-git', 
            \ 'coc-python',
            \ 'coc-json',
            \ 'coc-vimtex']

" Autocomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

xmap <Tab> <Plug>(coc-snippets-select)

nmap p <Plug>(miniyank-autoput)
nmap P <Plug>(miniyank-autoPut)
xmap p <Plug>(miniyank-autoput)
xmap P <Plug>(miniyank-autoPut)

nmap <space>n <Plug>(miniyank-cycle)
nmap <space>N <Plug>(miniyank-cycleback)

" Lightline 
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:lightline.active = {
            \ 'left': [ [ 'mode', 'paste' ],
            \           [ 'readonly', 'filename', 'modified', 'cocstatus' ] ]}
let g:lightline.component_function = {'cocstatus': 'coc#status'}
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
set noshowmode


" UltiSnips
" let g:UltiSnipsUsePythonVersion = 3
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'aserowy/tmux.nvim'
Plug 'CoenraadS/Bracket-Pair-Colorizer-2'
Plug 'junegunn/rainbow_parentheses.vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'neomake/neomake'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'onsails/lspkind-nvim'
Plug 'idbrii/vim-unityengine'
Plug 'OmniSharp/omnisharp-vim'
Plug 'amirrezaask/fuzzy.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'dense-analysis/ale'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'christoomey/vim-tmux-navigator'
" Plug 'adi/vim-indent-rainbow'
Plug 'ThePrimeagen/vim-be-good'
Plug 'overcache/NeoSolarized'
Plug 'lervag/vimtex'

set encoding=UTF-8

call plug#end()

"nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme NeoSolarized

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:kite_supported_languages = ['*']

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

set clipboard=unnamed
nmap <C-i> :lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.5}})<CR>

let g:ale_linters = {
\ 'cs' : ['OmniSharp'],
\ 'javascript' : ['flow-language-server']
\}

let b:ale_linters =  ['cs', 'flow-language-server']

autocmd FileType cs nmap <silent> <buffer> <leader> gd <Plug>(omnisharp_go_to_defninition)
autocmd FileType cs nmap <silent> <buffer> <leader> rn <Plug>(omnisharp_rename)
autocmd FileType cs nmap <silent> <buffer> <leader> ff :OmniSharpCodeFormat<CR>

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:prettier#autoformat = 0

:autocmd BufWritePost * :Prettier

" let g:rainbow_colors_black= [ 234, 235, 236, 237, 238, 239 ] let g:rainbow_colors_color= [ 226, 192, 195, 189, 225, 221 ]

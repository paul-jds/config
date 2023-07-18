syntax on                          " no syntax highlighting
set showmatch                       " show matching
set ignorecase                      " case insensitive 
set mouse=v                         " middle-click paste with 
set incsearch                       " incremental search
set hlsearch                        " highlight seaarch
set tabstop=4                       " number of columns occupied by a tab 
set softtabstop=4                   " see multiple spaces as tabstops so BS does the right thing
set expandtab                       " converts tabs to white space
set shiftwidth=4                    " width for autoindents
set autoindent                      " indent a new line the same amount as the line just typed
set number                          " add line numbers
set wildmode=longest,list           " get bash-like tab completions
filetype plugin indent on           " allow auto-indenting depending on file typ e
set mouse=a                         " enable mouse click
set clipboard=unnamedplus           " using system clipboard
set noswapfile                      " disable creating swap file
au TextYankPost * silent! lua vim.highlight.on_yank() " Highlight yank
highlight Comment ctermfg=green     " comments appear in green
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

call plug#begin()
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-sneak'
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
Plug 'hrsh7th/cmp-path', {'branch': 'main'}
Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
Plug 'ray-x/lsp_signature.nvim'
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'
Plug 'cespare/vim-toml', {'branch': 'main'}
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'
Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

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
syntax on                           " syntax highlighting
set mouse=a                         " enable mouse click
set clipboard=unnamedplus           " using system clipboard
set cursorline                      " highlight current cursorline
set noswapfile                      " disable creating swap file
highlight Comment ctermfg=green     " comments appear in green


call plug#begin("~/.vim/autoload/plugged")
 Plug 'scrooloose/nerdtree'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


autocmd VimEnter * NERDTree         " Autostart nerdtree  

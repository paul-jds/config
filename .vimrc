call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug '/usr/local/opt/fzf'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'michaeljsmith/vim-indent-object'
Plug 'honza/vim-snippets'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug '/usr/local/opt/fzf'
Plug 'w0rp/ale'
Plug 'Lokaltog/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-rhubarb'
Plug 'hashivim/vim-terraform'
let g:terraform_fmt_on_save=0
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""" LANGUAGE SPECIFIC SETTINGS """""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python "
""""""""""
augroup filetype_python
  autocmd!
  autocmd FileType python setlocal
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=100
  let python_highlight_all = 1
  autocmd FileType python syn keyword pythonDecorator True None False self

  autocmd BufNewFile,BufRead *.jinja setlocal syntax=htmljinja
  autocmd BufNewFile,BufRead *.mako setlocal ft=mako
  autocmd BufNewFile,BufRead *.less setlocal ft=less
augroup END

" Markdown "
""""""""""""
augroup filetype_markdown
  autocmd!

  " change inside heading
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal!?^==\\+$\r:nohlsearch\rkvg_"<cr>

  " change around heading
  autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+\r:nohlsearch\rg_vk0"<cr>
augroup END


" YAML"
""""""""
augroup filetype_yaml
    autocmd!
    autocmd FileType yaml setlocal
      \ tabstop=2
      \ sts=2
      \ sw=2
      \ expandtab
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" KEY MAPPINGS """"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>gdr :GoDebugStart . -listen_host localhost:5001 -staging<CR>
map <Leader><Down> :GoDebugNext<CR>
map <Leader><Right> :GoDebugStep<CR>
map <Leader><Up> :GoDebugStepOut<CR>
map <Leader><Left> :GoDebugBreakpoint<CR>
map <Leader>c :GoDebugContinue<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" PLUGIN SETTINGS """""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vim Indent Guides "
"""""""""""""""""""""
let g:indent_guides_auto_colors = 0
augroup indent_guides
  autocmd!
  autocmd BufRead,BufNewFile * IndentGuidesEnable
augroup END


syntax enable

set wrap " Wrap lines
set exrc  " Allow per-project vimrc's
set list " Show characters for tabs, spaces, end of line
set ruler " Shows line & column numbers
set number " Turn on line numbers
set secure  " Prevent :autocmd, shell and write commands from being run inside project-specific .vimrc files unless they're owned by me
set smarttab " <Tab> inserts correct number of spaces
set wildmenu " Enhanced tab completion
set autoread " Reload file when a file is changed from the outside
set vb t_vb= " Disables visual bell on term
set hlsearch " Highlight search matches
set showmode " Says whether or not paste mode is turned on or off
set t_Co=256 " Enable colored terminal
let &t_Co=256 " Number of term colors
set linebreak " Wordwrapping doesn't break words in the middle
set incsearch " Incremental search as typing
set smartcase " Will switch to case sensitive if a cap is used
set showmatch " Shows matches on search
set expandtab " Replaces tabs with spaces
set tabstop=2 " Number of spaces that a tab counts for
set ignorecase " Case insensitive search but see next option
set autoindent " Enable automatic alignment during insertions
set noswapfile " Don't use swp files
set smartindent " Tries to recognize code and indent
set matchtime=2 " two-tenths of a second blink
set cmdheight=2 " The commandbar height
set shiftwidth=2 " Number of spaces to use for each (auto)indent
set textwidth=74 " Maximum line length at 74 characters. Trigged with gq
set history=1000 " History length of ':' commands
set laststatus=2 " Always show the status line
set encoding=utf8 " UTF-8 FTW
set shell=/bin/sh " Use bash shell
set guioptions-=T " Removes GUI bars
set guioptions-=l " Removes scrollbars
set guioptions-=r " Removes scrollbars
set guioptions-=b " Removes scrollbars
set colorcolumn=100 " Have a line of at 100 characters.
set pastetoggle=<F2> " Binds F2 to pastetoggling
set clipboard=unnamed " All yank commands now go to mac clipboard
let &t_Sf="\<Esc>[3%dm" " Term foreground color
let &t_Sb="\<Esc>[4%dm" " Term background color
let &t_te="\<Esc>[?47l" " Output of termcap mode
let &t_ti="\<Esc>[?47h" " Term in termcap mode
set backspace+=start,eol,indent " Make backspace work properly on vim
set wildmode=list:longest,full " Bash command line tab completion
set listchars=tab:\|\ ,trail:●,extends:>,precedes:<,nbsp:+

" Unhighlight
noremap <space> :nohl<CR>

" Fuzzy finding via fzf
nnoremap <C-p> :FZF<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Vim Indent Guides "
"""""""""""""""""""""
let g:indent_guides_auto_colors = 0
augroup indent_guides
  autocmd!
  autocmd BufRead,BufNewFile * IndentGuidesEnable
augroup END

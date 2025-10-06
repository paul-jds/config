set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" start pathogen
call pathogen#infect()
call pathogen#helptags()

" toggle the tagbar
nmap , :TagbarToggle<CR>

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * silent! checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","


" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Enable syntax highlighting
syntax on


colorscheme	default
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


set nobackup
set nowb
set noswapfile
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set laststatus=2

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Set control flow keywords to yellow
highlight Conditional ctermfg=178 guifg=#DAA520
highlight Repeat ctermfg=178 guifg=#DAA520
highlight Statement ctermfg=178 guifg=#DAA520
highlight Keyword ctermfg=178 guifg=#DAA520

" Set comments to cyan
highlight Comment ctermfg=38 guifg=#009bae

" Set preprocessor directives to dark blue
highlight PreProc ctermfg=25 guifg=#004589

" Set constants to purple
highlight Constant ctermfg=96 guifg=#544263


au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

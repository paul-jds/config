syntax on
set wrap " Wrap lines
set background=dark
set ruler " Shows line & column numbers
set number " Turn on line numbers
set smarttab " <Tab> inserts correct number of spaces
set wildmenu " Enhanced tab completion
set autoread " Reload file when a file is changed from the outside
set hlsearch " Highlight search matches
set showmode " Says whether or not paste mode is turned on or off
set linebreak " Wordwrapping doesn't break words in the middle
set incsearch " Incremental search as typing
set smartcase " Will switch to case sensitive if a cap is used
set showmatch " Shows matches on search
set expandtab " Replaces tabs with spaces
set tabstop=2 " Number of spaces that a tab counts for
set shiftwidth=2 " Number of spaces to use for each (auto)indent
set ignorecase " Case insensitive search but see next option
set autoindent " Enable automatic alignment during insertions
set noswapfile " Don't use swp files
set smartindent " Tries to recognize code and indent
set matchtime=2 " two-tenths of a second blink
set encoding=utf8 " UTF-8 FTW
set clipboard=unnamed " All yank commands now go to mac clipboard
highlight Comment ctermfg=green
highlight LineNr ctermfg=grey

hi DiffAdd ctermbg=LightGreen   ctermfg=black  
hi DiffChange ctermbg=LightYellow ctermfg=black
hi DiffDelete ctermbg=LightRed ctermfg=black
hi DiffText ctermbg=LightYellow ctermfg=black

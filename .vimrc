set encoding=utf-8		
set fileencodings=utf-8,cp932,sjis,euc-jp,iso-2022-jp		
set fileformat=unix		
set fileformats=unix,dos,mac
	
set nowritebackup
set nobackup
set noswapfile
set backupdir-=.
set noundofile

set number
set laststatus=2
set cmdheight=2
set cursorline
set backspace=indent,eol,start

set hlsearch
nnoremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR>

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartindent
set autoindent

set pastetoggle=<F2>

augroup MyVimrc
  autocmd!
  autocmd InsertLeave * set nopaste
augroup END


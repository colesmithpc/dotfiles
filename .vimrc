" Basic Settings
set number              " Line numbers
set relativenumber      " Relative line numbers
set showcmd             " Show command in bottom bar
set wildmenu            " Visual autocomplete for command menu
set showmatch           " Highlight matching brackets
set incsearch           " Search as characters are entered
set hlsearch            " Highlight search matches
set ignorecase          " Ignore case in search
set smartcase           " Unless uppercase is used
set clipboard=unnamedplus " Use system clipboard

" Indentation
set tabstop=4           " 4 spaces for tabs
set shiftwidth=4        " 4 spaces for indentation
set expandtab           " Use spaces instead of tabs
set autoindent          " Auto indent
set smartindent         " Smart indent

" Performance
set lazyredraw          " Don't redraw during macros
set ttyfast             " Faster scrolling

" Split behavior
set splitbelow          " Horizontal splits below
set splitright          " Vertical splits right

" Backups
set nobackup
set nowritebackup
set noswapfile

" Undo
set undofile            " Persistent undo
set undodir=~/.vim/undodir

" Syntax with colors but no cursorline
syntax enable
set t_Co=256            " 256 colors
colorscheme desert      " Colored syntax
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

" Key mappings
let mapleader = " "     " Space as leader key

" Quick save
nnoremap <leader>w :w<CR>

" Quick quit
nnoremap <leader>q :q<CR>

" Clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Split navigation (Ctrl+hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move lines up/down with Alt+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" Better tabbing in visual mode
vnoremap < <gv
vnoremap > >gv

" Auto-close brackets
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Pentesting useful settings
set pastetoggle=<F2>    " Toggle paste mode to avoid indent issues
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab

" Ensure undodir exists
if !isdirectory($HOME . '/.vim/undodir')
    call mkdir($HOME . '/.vim/undodir' , 'p')
endif

" Enable filetype detection and plugins
filetype plugin on
filetype indent on

" Backspace behavior
set backspace=indent,eol,start

" Line wrapping
set wrap
set linebreak
set textwidth=80

" Scroll with margin
set scrolloff=5
set sidescrolloff=5

" Better command-line completion
set wildmode=list:longest,full

" Timeout settings for better responsiveness
set timeoutlen=500
set ttimeoutlen=0

" Auto-close brackets only when at the end of line or followed by whitespace
inoremap {<CR> {<CR>}<Esc>0
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

" Escape shortcut
inoremap jk <Esc>

" Hex editing for binary files
augroup Binary
    autocmd!
    autocmd BufReadPre *.bin,*.hex set binary
    autocmd BufReadPost * if &binary | silent %!xxd -g 1
    autocmd BufReadPost * set ft=xxd | endif
    autocmd BufWritePre * if &binary | %!xxd -r
    autocmd BufWritePre * endif
    autocmd BufWritePost * if &binary | silent %!xxd -g 1
    autocmd BufWritePost * set nomod | endif
augroup END

set nomodeline


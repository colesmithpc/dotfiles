" =========================
" ~/.vimrc – Minimal Version (No themes)
" =========================

" -----------------------------
" Basic Settings
" -----------------------------
set number                  " Show line numbers
set relativenumber          " Relative line numbers
set showcmd                 " Display partial command in status line
set wildmenu                " Enhanced command-line completion
set showmatch               " Highlight matching brackets
set incsearch               " Incremental search
set hlsearch                " Highlight search matches
set ignorecase              " Case-insensitive search
set smartcase               " Unless uppercase is used
set clipboard=unnamedplus   " Use system clipboard

" -----------------------------
" Indentation
" -----------------------------
set tabstop=4               " Number of spaces for a tab
set shiftwidth=4            " Indentation size
set expandtab               " Convert tabs to spaces
set autoindent              " Preserve indentation from previous line
set smartindent             " Smart autoindentation

" -----------------------------
" Performance
" -----------------------------
set lazyredraw              " Don't redraw during macros
set ttyfast                 " Optimize for fast terminals

" -----------------------------
" Split behavior
" -----------------------------
set splitbelow              " Horizontal splits below
set splitright              " Vertical splits right

" -----------------------------
" Backups / Undo
" -----------------------------
set nobackup
set nowritebackup
set noswapfile
set undofile
if !isdirectory($HOME . '/.vim/undodir')
    call mkdir($HOME . '/.vim/undodir', 'p')
endif
set undodir=~/.vim/undodir

" -----------------------------
" Leader key and shortcuts
" -----------------------------
let mapleader = " "         " Space as leader key

" Quick save / quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><space> :nohlsearch<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move lines up/down in normal mode
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==

" Better tabbing in visual mode
vnoremap < <gv
vnoremap > >gv

" -----------------------------
" Escape shortcut
" -----------------------------
inoremap jk <Esc>

" -----------------------------
" Filetype & Python settings
" -----------------------------
filetype plugin on
filetype indent on
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType python setlocal smartindent

" Paste toggle for pentesting
set pastetoggle=<F2>

" -----------------------------
" Backspace behavior & scrolling
" -----------------------------
set backspace=indent,eol,start
set wrap
set linebreak
set textwidth=80
set scrolloff=5
set sidescrolloff=5

" -----------------------------
" Command-line completion & timeout
" -----------------------------
set wildmode=list:longest,full
set timeoutlen=500
set ttimeoutlen=0

" -----------------------------
" Hex editing for binary files
" -----------------------------
augroup Binary
    autocmd!
    autocmd BufReadPre *.bin,*.hex set binary
    autocmd BufReadPost * if &binary | silent %!xxd -g 1 | set ft=xxd | endif
    autocmd BufWritePre * if &binary | %!xxd -r | endif
    autocmd BufWritePost * if &binary | silent %!xxd -g 1 | set nomod | endif
augroup END

" -----------------------------
" Plugins (optional placeholders)
" -----------------------------
" call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree'
" Plug 'dense-analysis/ale'
" call plug#end()

" =========================
" End of minimal vimrc
" =========================

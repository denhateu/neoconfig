set encoding=utf-8
set fileformat=unix

" Beautiful toggle relativenumbers
set number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Enable mouse
set mouse=a

" Use system clipboard
set clipboard=unnamed

" Tabulation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " Use spaces instead of tabs
set autoindent

" Disable wrap
set nowrap

" Disable backups
set nobackup
set nowritebackup
set noswapfile

" Search neovim config file in local project folder
set exrc
set secure

" Disable comment new line after comment
set formatoptions-=cro

set cursorline
set scrolloff=7

set colorcolumn=79
highlight ColorColumn ctermbg=darkgray

" Horizontal split open below and right
set splitbelow
set splitright

" Highlight search results
set hlsearch
set incsearch

" Plugins
call plug#begin()

Plug 'morhetz/gruvbox'

call plug#end()

" Theme
set bg=dark
syntax on

let g:gruvbox_contrast_dark='hard'

colorscheme gruvbox

if (has('termguicolors'))
    set termguicolors
endif

" Keymaps
let mapleader=','

inoremap jj <ESC>

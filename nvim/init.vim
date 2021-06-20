" set leader key
nnoremap <Space> <NOP>
let g:mapleader = "\<Space>"

colo molokai
syntax enable
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set splitbelow
set splitright
set conceallevel=0
set smarttab
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set smartindent
set autoindent
set laststatus=0
set number
set cursorline
set background=dark
set nowritebackup
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus
set autoread
set linebreak
set incsearch
set noswapfile
set smartcase
set ignorecase
set showmatch
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

au! BufWritePost $MYVIMRC source %

let g:ycm_autoclose_preview_window_after_insertion = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']
let g:synastic_cpp_checkers = ['gcc']

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let NERDTreeShowHidden=1

highlight SignColumn 	  ctermbg=8
highlight GitGutterAdd    ctermfg=10 ctermbg=8 
highlight GitGutterChange ctermfg=11 ctermbg=8 
highlight GitGutterDelete ctermfg=9 ctermbg=8 

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

imap jj <ESC>

map <F2> :w !xclip -sel clip<CR><CR>
nnoremap <silent> <F5> :UndotreeToggle<CR>

nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> <M-j> :wincmd j<CR>
nnoremap <silent> <M-k> :wincmd k<CR>
nnoremap <silent> <M-l> :wincmd l<CR>

nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>

nnoremap <Leader>m :noh<cr>

" Use Leader + hjkl to resize windows
nnoremap <Leader> j    :resize -2<CR>
nnoremap <Leader> k    :resize +2<CR>
nnoremap <Leader> h    :vertical resize -2<CR>
nnoremap <Leader> l    :vertical resize +2<CR>

nnoremap <leader>t :tabn<CR>
nnoremap <leader>w :set wrap!<CR>

nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>ff :NERDTreeFind 
nnoremap <silent> <leader>gf :GFiles<CR>

nnoremap <silent> <leader>d :Git diff %<CR>

" For global replace
nnoremap gr gD:%s///gc<left><left><left>

set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

Plugin 'mbbill/undotree'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'

call vundle#end()               " required
filetype plugin indent on       " required

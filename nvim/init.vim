" set leader key
nnoremap <Space> <NOP>
let g:mapleader = "\<Space>"

syntax on                               " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
" set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set tabstop=4                           " Insert 2 spaces for a tab
set softtabstop=0 noexpandtab
set shiftwidth=4

set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autoread
set linebreak
filetype plugin indent on

set incsearch
set noswapfile
set smartcase
set ignorecase
set showmatch
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

colo molokai
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
" cmap w!! w !sudo tee %

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set scrolloff=5

let loaded_matchparen = 1

let g:ycm_autoclose_preview_window_after_insertion = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

imap jj <ESC>

map <F2> :w !xclip -sel clip<CR><CR>
nnoremap <silent> <F5> :UndotreeToggle<CR>

nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>
" nnoremap <leader>f :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>

" Alternate way to quit
nnoremap <C-Q> :wq<CR>

nnoremap <Leader>m :noh<cr>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

nnoremap <leader>t :tabn<CR>
nnoremap <leader>w :set wrap!<CR>

nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>ff :NERDTreeFind 
nnoremap <silent> <leader>gf :GFiles<CR>

nnoremap <silent> <leader>d :Git diff %<CR>


set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-sensible'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'

" Plugin 'kevinhwang91/rnvimr'

" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required

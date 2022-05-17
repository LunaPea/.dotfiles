nnoremap <Space> <NOP>
let g:mapleader = "\<Space>"

" checking what machine neovim is ran on
function! WhichEnv() abort
	if has('win64') || has('win32') || has('win16')
		return 'WINDOWS'
	else
		return toupper(substitute(system('uname'), '\n', '', ''))
	endif
endfunction

if (WhichEnv() =~# 'WINDOWS')
	let g:nvim_dir=expand($VIM) . '/'
	execute "set rtp+=" . g:nvim_dir
endif
if (WhichEnv() =~# 'LINUX')
	let g:nvim_dir='~/.config/nvim/'
endif

let g:vundle_plugin_path = g:nvim_dir . 'bundle/'

au! BufWritePost $MYVIMRC source %
colo molokai

syntax enable

set hidden
set noshowmode
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
execute 'set undodir=' . g:nvim_dir . 'undodir'
set undofile
set scrolloff=8
set sidescrolloff=8
set conceallevel=2

" 
" key mappings
" 

nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

nnoremap <DOWN> gj
nnoremap <UP> gk

inoremap jj <ESC>
tnoremap <ESC><ESC> <C-\><C-n>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <A-h> :tabprev<CR>
nnoremap <A-l> :tabnext<CR>
tnoremap <A-h> <C-\><C-N>:tabprev<CR>
tnoremap <A-l> <C-\><C-N>:tabnext<CR>
inoremap <A-h> <ESC>:tabprev<CR>
inoremap <A-l> <ESC>:tabnext<CR>

nnoremap <silent>ss :split<CR>
nnoremap <silent>sv :vsplit<CR>

map gf :tabnew <cfile><CR>
nnoremap <leader>n :tabnew<CR><ESC>:term<CR>

nnoremap <silent> <M-1> :tabn 1<CR>
nnoremap <silent> <M-2> :tabn 2<CR>
nnoremap <silent> <M-3> :tabn 3<CR>
nnoremap <silent> <M-4> :tabn 4<CR>
nnoremap <silent> <M-5> :tabn 5<CR>
tnoremap <silent> <M-1> <C-\><C-N>:tabn 1<CR>
tnoremap <silent> <M-2> <C-\><C-N>:tabn 2<CR>
tnoremap <silent> <M-3> <C-\><C-N>:tabn 3<CR>
tnoremap <silent> <M-4> <C-\><C-N>:tabn 4<CR>
tnoremap <silent> <M-5> <C-\><C-N>:tabn 5<CR>

nnoremap <silent> <M-!> :tabm 0<CR>
nnoremap <silent> <M-@> :tabm 0<CR>:tabm +1<CR>
nnoremap <silent> <M-#> :tabm 0<CR>:tabm +2<CR>
nnoremap <silent> <M-$> :tabm 0<CR>:tabm +3<CR>
nnoremap <silent> <M-%> :tabm 0<CR>:tabm +4<CR>
tnoremap <silent> <M-!> <C-\><C-N>:tabm 1<CR>
tnoremap <silent> <M-@> <C-\><C-N>:tabm 2<CR>
tnoremap <silent> <M-#> <C-\><C-N>:tabm 3<CR>
tnoremap <silent> <M-$> <C-\><C-N>:tabm 4<CR>
tnoremap <silent> <M-%> <C-\><C-N>:tabm 5<CR>

nnoremap <silent> <M-]> :tabn<CR>
nnoremap <silent> <M-[> :tabp<CR>
tnoremap <silent> <M-]> <C-\><C-N>:tabn<CR>
tnoremap <silent> <M-[> <C-\><C-N>:tabp<CR>

" check uncheck in markdown
autocmd FileType markdown nnoremap <buffer><silent>c V<ESC>/\%V[<CR>vll:s/\%V /x/e<CR>vll:s/\%Vx/ /e<CR>:noh<CR>
autocmd FileType markdown nnoremap <buffer><leader>il i<Right>[<text>]() <ESC>hhp/<text><CR>vllllldi

" reselect visual selection while indenting
vnoremap < <gv
vnoremap > >gv

vnoremap y myy'y
vnoremap Y myY'y

" map <Leader>ve :tabnew $MYVIMRC<CR>
" map <Leader>vr :source $MYVIMRC<CR>

nnoremap <Leader><leader><leader> :noh<cr>
nmap <leader>x :!xdg-open %<CR><CR>

nnoremap <leader>sp :normal! mz[s1z=`z<CR>
nnoremap <leader>sc :setlocal spell!<CR>

nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

imap ;; <ESC>A;<ESC>
nmap ;; A;<ESC>


"
" Autocommand and commands
"


command W w
command Q q

autocmd TermOpen * startinsert
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd TermOpen * setlocal nonumber norelativenumber

autocmd VimResized * wincmd =
au FocusGained,BufEnter * :checktime

" Only show cursorline in focused buffer
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END



au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " jump to last position when loading a file

command Termvsplit vsplit | term
cnoreabbrev termv Termvsplit


"
"	Vundle setup
"


highlight clear MatchParen
highlight default MatchParen term=bold ctermfg=166
highlight clear Search
highlight default Search term=bold cterm=bold ctermbg=24

set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
execute 'set rtp+=' . g:vundle_plugin_path . 'Vundle.vim'
call vundle#begin(g:vundle_plugin_path)            " required
Plugin 'VundleVim/Vundle.vim'  " required

" source ~/.config/nvim/plugins/undotree.vim
" source ~/.config/nvim/plugins/nerdtree.vim
" source ~/.config/nvim/plugins/vim-sensible.vim
" Plugin 'glacambre/firenvim'
" Plugin 'github/copilot.vim'
" Plugin 'DingDean/wgsl.vim'

execute "source " . g:nvim_dir . "plugins/lightline.vim"
execute "source " . g:nvim_dir . "plugins/copilot.vim"
execute "source " . g:nvim_dir . "plugins/youcompleteme.vim"
execute "source " . g:nvim_dir . "plugins/vim-surround.vim"
execute "source " . g:nvim_dir . "plugins/vim-fugitive.vim"
execute "source " . g:nvim_dir . "plugins/vim-commentary.vim"
execute "source " . g:nvim_dir . "plugins/vim-gitgutter.vim"
execute "source " . g:nvim_dir . "plugins/vim-cpp-modern.vim"
execute "source " . g:nvim_dir . "plugins/tabular.vim"
execute "source " . g:nvim_dir . "plugins/vim-markdown.vim"
execute "source " . g:nvim_dir . "plugins/vim-css-color.vim"
execute "source " . g:nvim_dir . "plugins/goyo.vim"
execute "source " . g:nvim_dir . "plugins/markdown-preview.vim"
execute "source " . g:nvim_dir . "plugins/vim-easymotion.vim"
execute "source " . g:nvim_dir . "plugins/vim-table-mode.vim"

call vundle#end()               " required
filetype plugin indent on       " required

"
"
"

" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto expand comments
"
au FileType * set formatoptions=tcroqln
au FileType * set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-\ [\ ],b:-\ [x],b:\"
autocmd BufRead,BufNewFile *.porth set filetype=porth
autocmd BufRead,BufNewFile *.porth set expandtab

if filereadable(@%) == 0
	term
endif

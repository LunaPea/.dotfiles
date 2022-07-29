nnoremap <Space> <NOP>
let g:mapleader = "\<Space>"

" mess trying to make this config cross platform event thought i don't use windows ?????
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

execute "source " . g:nvim_dir . "terminal-colors.vim"

let g:plugin_path = g:nvim_dir . 'bundle/'

au! BufWritePost $MYVIMRC source %
syntax enable

colo molokai

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
set nofoldenable
set lazyredraw
set listchars=nbsp:¬,extends:»,precedes:«,trail:•
cmap w!! w !sudo tee %

" 
" key mappings
" 

" show hidden characters
nnoremap <leader>, :set invlist<cr>

"
" make navigation on wrapped text better
"
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" open file that is next to current file
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>


" Jump to start and end of line using the home row keys
map H ^
map L $

" I can type :help on my own, thanks.
map <F1> <Esc>
imap <F1> <Esc>

" easy access to ESC
inoremap jj <ESC>
tnoremap <ESC><ESC> <C-\><C-n>

" window navigation
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

" tab navigation
nnoremap <A-h> :tabprev<CR>
nnoremap <A-l> :tabnext<CR>
tnoremap <A-h> <C-\><C-N>:tabprev<CR>
tnoremap <A-l> <C-\><C-N>:tabnext<CR>
inoremap <A-h> <ESC>:tabprev<CR>
inoremap <A-l> <ESC>:tabnext<CR>

" better split
nnoremap <silent>ss :split<CR>
nnoremap <silent>sv :vsplit<CR>

" open file on cursor
map gf :tabnew <cfile><CR>

" open new terminal tab
" this mess makes it so the filename in tabline and lightline apears as term instead of a mess
nnoremap <silent><leader>n :tabnew<CR><ESC>:term fish -C cd\ ./\ \\#/term<CR>
tnoremap <silent><C-l> <RIGHT>

" navigate tabs with Alt + number
nnoremap <silent> <M-1> :tabn 1<CR>
nnoremap <silent> <M-2> :tabn 2<CR>
nnoremap <silent> <M-3> :tabn 3<CR>
nnoremap <silent> <M-4> :tabn 4<CR>
nnoremap <silent> <M-5> :tabn 5<CR>
nnoremap <silent> <M-6> :tabn 6<CR>
nnoremap <silent> <M-7> :tabn 7<CR>
nnoremap <silent> <M-8> :tabn 8<CR>
nnoremap <silent> <M-9> :tabn 9<CR>

tnoremap <silent> <M-1> <C-\><C-N>:tabn 1<CR>
tnoremap <silent> <M-2> <C-\><C-N>:tabn 2<CR>
tnoremap <silent> <M-3> <C-\><C-N>:tabn 3<CR>
tnoremap <silent> <M-4> <C-\><C-N>:tabn 4<CR>
tnoremap <silent> <M-5> <C-\><C-N>:tabn 5<CR>
tnoremap <silent> <M-6> <C-\><C-N>:tabn 6<CR>
tnoremap <silent> <M-7> <C-\><C-N>:tabn 7<CR>
tnoremap <silent> <M-8> <C-\><C-N>:tabn 8<CR>
tnoremap <silent> <M-9> <C-\><C-N>:tabn 9<CR>

" switch tabs with Alt + Shift + number
nnoremap <silent> <M-!> :tabm 0<CR>
nnoremap <silent> <M-@> :tabm 0<CR>:tabm +1<CR>
nnoremap <silent> <M-#> :tabm 0<CR>:tabm +2<CR>
nnoremap <silent> <M-$> :tabm 0<CR>:tabm +3<CR>
nnoremap <silent> <M-%> :tabm 0<CR>:tabm +4<CR>
nnoremap <silent> <M-^> :tabm 0<CR>:tabm +6<CR>
nnoremap <silent> <M-&> :tabm 0<CR>:tabm +7<CR>
nnoremap <silent> <M-*> :tabm 0<CR>:tabm +8<CR>
nnoremap <silent> <M-(> :tabm 0<CR>:tabm +9<CR>

tnoremap <silent> <M-!> <C-\><C-N>:tabm 1<CR>
tnoremap <silent> <M-@> <C-\><C-N>:tabm 2<CR>
tnoremap <silent> <M-#> <C-\><C-N>:tabm 3<CR>
tnoremap <silent> <M-$> <C-\><C-N>:tabm 4<CR>
tnoremap <silent> <M-%> <C-\><C-N>:tabm 5<CR>
tnoremap <silent> <M-^> <C-\><C-N>:tabm 6<CR>
tnoremap <silent> <M-&> <C-\><C-N>:tabm 7<CR>
tnoremap <silent> <M-*> <C-\><C-N>:tabm 8<CR>
tnoremap <silent> <M-(> <C-\><C-N>:tabm 9<CR>

nnoremap <silent> <M-]> :tabn<CR>
nnoremap <silent> <M-[> :tabp<CR>
tnoremap <silent> <M-]> <C-\><C-N>:tabn<CR>
tnoremap <silent> <M-[> <C-\><C-N>:tabp<CR>

" reselect visual selection while indenting
vnoremap < <gv
vnoremap > >gv

" ?
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" clear highlight
nnoremap <silent><leader><leader><leader> :noh<cr>

" open current file
nmap <leader>x :!xdg-open %<CR><CR>

" quick fix spelling
nnoremap <leader>sp :normal! mz[s1z=`z<CR>
" toggle spell checking
nnoremap <leader>sc :setlocal spell!<CR>

" move line/selection up/down " TODO: fix visual move
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
" vnoremap K :m '<-2<CR>gv=gv
" vnoremap J :m '>+1<CR>gv=gv

" quick add semicolon
imap ;; <ESC>A;<ESC>
nmap ;; A;<ESC>

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


"
" Autocommand and commands
"

command W w
command Q q

" auto insert when switching to terminal
autocmd TermOpen * startinsert
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd TermOpen * setlocal nonumber norelativenumber

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

autocmd VimResized * wincmd =
au FocusGained,BufEnter * :checktime

" check uncheck in markdown
autocmd FileType markdown nnoremap <buffer><silent>c V<ESC>/\%V[<CR>vll:s/\%V /x/e<CR>vll:s/\%Vx/ /e<CR>:noh<CR>
autocmd FileType markdown nnoremap <buffer><leader>il i<Right>[<text>]() <ESC>hhp/<text><CR>vllllldi

" Only show cursorline in focused buffer
augroup CursorLine
	au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END


au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " jump to last position when loading a file

" this mess makes it so the filename in tabline and lightline apears as term instead of a mess
command Termvsplit vsplit | term fish -C cd\ ./\ \\#/term
cnoreabbrev termv Termvsplit

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}

highlight clear MatchParen
highlight default MatchParen term=bold ctermfg=166
highlight clear Search
highlight default Search term=bold cterm=bold ctermbg=24


"
"	Plugin setup
"

set nocompatible               " be improved, required
filetype off                   " required
"
call plug#begin()

" source ~/.config/nvim/plugins/undotree.vim
" source ~/.config/nvim/plugins/nerdtree.vim
" source ~/.config/nvim/plugins/vim-sensible.vim
" Plugin 'glacambre/firenvim'
" Plugin 'github/copilot.vim'
" Plug 'andymass/vim-matchup'

Plug 'rust-lang/rust.vim'
Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'bfrg/vim-cpp-modern'
Plug 'ap/vim-css-color'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'iamcco/markdown-preview.nvim'
Plug 'scrooloose/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-eunuch'
Plug 'rhysd/rust-doc.vim'
Plug 'timonv/vim-cargo'
Plug 'DingDean/wgsl.vim'
Plug 'cespare/vim-toml', {'branch': 'main'}
Plug 'dag/vim-fish'
Plug 'terryma/vim-expand-region'

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


call plug#end()               " required
filetype plugin indent on       " required

"
"
"

"
" Coc.vim: 
"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent>K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType rust,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp') " what is it
augroup end

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:coc_global_extensions = ['coc-emmet', 'coc-rust-analyzer', 'coc-json', 'coc-prettier']

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"
" lightline
"

let g:lightline = {
\ 'colorscheme': 'molokai',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status'
\ },
\ }


"
" comfortable-motion
"

let g:comfortable_motion_no_default_key_mappings = 1

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>

" nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
" nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

"
" NERDTree
"

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let NERDTreeShowHidden=1

nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>ff :NERDTreeFind 

"
" rust.vim
"

autocmd BufRead,BufNewFile *.rs nmap <leader>r :CargoRun<CR>
let g:rustfmt_autosave = 1
let g:rust_fold = 1

"
" UndoTree
"

nnoremap <silent> <leader>u :UndotreeToggle<CR>

"
" vim-fugitive
"

nnoremap <silent> <leader>gd :Git diff %<CR>
nnoremap <silent> <leader>gf :GFiles<CR>

"
" vim-gitgutter
"

highlight SignColumn 	  ctermbg=233
highlight GitGutterAdd    ctermfg=10 ctermbg=233
highlight GitGutterChange ctermfg=11 ctermbg=233
highlight GitGutterDelete ctermfg=9 ctermbg=233

au TextChanged * call gitgutter#process_buffer(bufnr(''), 0)

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

"
" vim-table-mode
"

autocmd FileType markdown let g:table_mode_corner='|'
nnoremap <leader>t :TableModeToggle<CR>

" other

au FileType * set formatoptions=tcroqln
au FileType * set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,b:-\ [\ ],b:-\ [x],b:\",b:-

" porth
autocmd BufRead,BufNewFile *.porth set filetype=porth
autocmd BufRead,BufNewFile *.porth set expandtab

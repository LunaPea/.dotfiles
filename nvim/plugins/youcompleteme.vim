Plug 'valloric/youcompleteme'

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_goto_buffer_command = 'split'
" let g:ycm_rust_toolchain_root = "/home/wera/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu"

nnoremap <leader>] :tab YcmCompleter GoTo<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>
nnoremap <leader>t :tab YcmCompleter GetType<CR>
nnoremap <leader>gt :tab YcmCompleter GoToType<CR>
nnoremap <leader>r :YcmCompleter RefactorRename 


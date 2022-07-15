Plug 'yuttie/comfortable-motion.vim'

let g:comfortable_motion_no_default_key_mappings = 1

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>

" nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
" nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

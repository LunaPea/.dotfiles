Plug 'airblade/vim-gitgutter'

highlight SignColumn 	  ctermbg=233
highlight GitGutterAdd    ctermfg=10 ctermbg=233
highlight GitGutterChange ctermfg=11 ctermbg=233
highlight GitGutterDelete ctermfg=9 ctermbg=233

au TextChanged * call gitgutter#process_buffer(bufnr(''), 0)

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

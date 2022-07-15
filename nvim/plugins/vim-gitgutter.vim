Plug 'airblade/vim-gitgutter'

highlight SignColumn 	  ctermbg=8
highlight GitGutterAdd    ctermfg=10 ctermbg=8 
highlight GitGutterChange ctermfg=11 ctermbg=8 
highlight GitGutterDelete ctermfg=9 ctermbg=8 

au TextChanged * call gitgutter#process_buffer(bufnr(''), 0)

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

Plugin 'github/copilot.vim'

let g:copilot_no_tab_map = v:true
imap <silent><script><expr> <C-l> copilot#Accept("\<CR>")

" enable :Copilot split every time you enter insert mode if copilot_slit is set to 1
let g:copilot_split = 0
au InsertEnter * if g:copilot_split | :Copilot split | endif
" hotkey to set 0 if set to 1
function! CopilotSplit()
	if g:copilot_split
		let g:copilot_split = 0
	else
		let g:copilot_split = 1
	endif
endfunction

nmap <leader>c :call CopilotSplit()<CR>

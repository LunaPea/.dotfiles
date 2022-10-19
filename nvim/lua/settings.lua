local set = vim.opt
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

set.expandtab = true
set.shiftwidth = 4
set.smarttab = true
set.tabstop = 4
set.hlsearch = true
set.termguicolors = true
set.showmode = false
set.mouse = 'a'
set.splitbelow = true
set.splitright = true
set.tabstop = 4
set.softtabstop = 0
set.expandtab = false
set.shiftwidth = 4
set.smartindent = true
set.number = true
set.cursorline = true
set.writebackup = false
set.updatetime = 300
set.timeoutlen = 500
set.clipboard = 'unnamedplus'
set.linebreak = true
set.swapfile = false
set.smartcase = true
set.ignorecase = true
set.undofile = true
set.scrolloff = 8
set.sidescrolloff = 8
set.foldenable = false
set.lazyredraw = true
set.listchars = 'nbsp:¬,trail:•,space:•,tab:--→'


map('t', '<ESC><ESC>', [[<C-\><C-n>]], opts)

map('n', '   ', ':noh<CR>', opts)

map('n', 'j', 'gj', opts)
map('n', 'gj', 'j', opts)
map('n', 'k', 'gk', opts)
map('n', 'gk', 'k', opts)

map('n', 'H', '^', opts)
map('n', 'L', '$', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

map('n', ' sc', ':normal! mz[s1z=`z<CR>', opts)
map('n', ' sp', ':setlocal spell!<CR>', opts)

map('n', 'n', 'nzz', opts)
map('n', 'N', 'Nzz', opts)
map('n', '*', '*zz', opts)
map('n', '#', '#zz', opts)
map('n', 'g*', 'g*zz', opts)


for _, d in ipairs({'h', 'j', 'k', 'l'}) do
	map('n', '<C-'..d..'>', [[<C-w>]]..d, opts)
	map('i', '<C-'..d..'>', [[<ESC><C-w>]]..d, opts)
	map('t', '<C-'..d..'>', [[<C-\><C-n><C-w>]]..d, opts)
end

map('n', '<A-h>', ':tabprev<CR>', opts)
map('n', '<A-l>', ':tabnext<CR>', opts)

map('i', '<A-h>', '<ESC>:tabprev<CR>', opts)
map('i', '<A-l>', '<ESC>:tabnext<CR>', opts)

map('t', '<A-h>', [[<C-\><C-n>:tabprev<CR>]], opts)
map('t', '<A-l>', [[<C-\><C-n>:tabnext<CR>]], opts)


map('n', '<A-H>', ':silent! tabmove -1<CR>', opts)
map('n', '<A-L>', ':silent! tabmove +1<CR>', opts)

map('i', '<A-H>', '<ESC>:silent! tabmove -1<CR>', opts)
map('i', '<A-L>', '<ESC>:silent! tabmove +1<CR>', opts)

map('t', '<A-H>', [[<C-\><C-n>:silent! tabmove -1<CR>]], opts)
map('t', '<A-L>', [[<C-\><C-n>:silent! tabmove +1<CR>]], opts)


function tabmove(number)
	if #vim.api.nvim_list_tabpages() >= number then
		vim.cmd(':tabmove ' .. number)
	else
		vim.cmd(':tabmove')
	end
end

function tabnext(number)
	if #vim.api.nvim_list_tabpages() >= number then
		vim.cmd(':tabnext ' .. number)
	else
		vim.cmd(':tablast')
	end
end

local sh_nu = {'!','@','#','$','%','^','&','*','('}

for i = 1, 9 do
	map('n', '<A-'..sh_nu[i]..'>', function() tabnext(i) end, opts)
	map('t', '<A-'..sh_nu[i]..'>', function() tabnext(i) end, opts)

	map('n', '<A-'..sh_nu[i]..'>', function() tabmove(i) end, opts)
	map('t', '<A-'..sh_nu[i]..'>', function() tabmove(i) end, opts)
	-- this might be broken??
end



vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.cmd[[cnoreabbrev w!! w ! sudo tee %]]

vim.cmd[[colorscheme molokai]]

vim.api.nvim_create_autocmd({'TermOpen'}, {
	command = 'setlocal nonumber norelativenumber\nstartinsert'
})

vim.api.nvim_create_autocmd({'BufWinEnter', 'WinEnter'}, {
	pattern = {'term://*'},
	command = 'startinsert'
})

vim.api.nvim_create_autocmd({'BufEnter', 'FocusGained'}, {
	command = 'checktime'
})

vim.api.nvim_create_autocmd({'BufReadPost'}, {
	command = [[silent! normal! g`"zv']]
})


local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "   ", ":noh<CR>", opts)

vim.keymap.set("n", "j", "gj", opts)
vim.keymap.set("n", "gj", "j", opts)
vim.keymap.set("n", "k", "gk", opts)
vim.keymap.set("n", "gk", "k", opts)

vim.keymap.set("n", "H", "^", opts)
vim.keymap.set("n", "L", "$", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
vim.keymap.set("n", "*", "*zz", opts)
vim.keymap.set("n", "#", "#zz", opts)
vim.keymap.set("n", "g*", "g*zz", opts)

for _, d in pairs({ "h", "j", "k", "l" }) do
	vim.keymap.set("n", "<C-" .. d .. ">", [[<C-w>]] .. d, opts)
	vim.keymap.set("i", "<C-" .. d .. ">", [[<ESC><C-w>]] .. d, opts)
	vim.keymap.set("t", "<C-" .. d .. ">", [[<C-\><C-n><C-w>]] .. d, opts)
end

vim.cmd([[cnoreabbrev w!! w ! sudo tee %]])

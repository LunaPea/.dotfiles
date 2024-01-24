vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.foldenable = false
vim.opt.lazyredraw = true
vim.opt.linebreak = true
vim.opt.listchars = "nbsp:¬,trail:•,space:•,tab:-->"
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.sidescrolloff = 8
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup = false

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained" }, {
	command = "checktime",
})

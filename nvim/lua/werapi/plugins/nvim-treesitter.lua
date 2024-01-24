return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	opts = {
		ensure_installed = "all",
		sync_install = true,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	},
	config = function()
		require("nvim-treesitter").setup(opts)

		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = { "*.wgsl" },
			command = "TSEnable highlight",
		})
	end,
}

return {
	"terryma/vim-expand-region",
	config = function()
		vim.keymap.set(
			"v",
			"v",
			"<Plug>(expand_region_expand)",
			{ noremap = true, silent = true, desc = "Expand region" }
		)
	end,
}

return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		height = 10, -- height of the trouble list when position is top or bottom
		mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
		severity = nil, -- nil (ALL) or vim.diagnostic.severity.ERROR | WARN | INFO | HINT
		padding = false, -- add an extra new line on top of the list
		action_keys = { -- key mappings for actions in the trouble list
			-- map to {} to remove a mapping, for example:
			-- close = {},
			open_split = { "<c-v>" }, -- open buffer in new split
			open_vsplit = { "<c-x>" }, -- open buffer in new vsplit
			jump_close = { "o" }, -- jump to the diagnostic and close the list
			open_code_href = "c", -- if present, open a URI with more information about the diagnostic error
			close_folds = { "zM", "zm" }, -- close all folds
			open_folds = { "zR", "zr" }, -- open all folds
			toggle_fold = { "zA", "za" }, -- toggle fold of current file
		},
		win_config = { border = "single" }, -- window configuration for floating windows. See |nvim_open_win()|.
		auto_open = true, -- automatically open the list when you have diagnostics
		auto_close = true, -- automatically close the list when you have no diagnostics
		auto_fold = false, -- automatically fold a file trouble list at creation
		auto_jump = { "lsp_definitions" }, -- for the given modes, automatically jump if there is only a single result
		include_declaration = { "lsp_references", "lsp_implementations", "lsp_definitions" }, -- for the given modes, include the declaration of the current symbol in the results
	},
}

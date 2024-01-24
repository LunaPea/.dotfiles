return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local widgets = require("dap.ui.widgets")
		local opts = { noremap = true, silent = true }

		opts.desc = "Toggle breakpoint during debugging"
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, opts)

		opts.desc = "Continue debugging"
		vim.keymap.set("n", "<leader>dc", dap.continue, opts)

		opts.desc = "Step into debugging scope"
		vim.keymap.set("n", "<leader>di", dap.step_into, opts)

		opts.desc = "Step out of current debugging scope"
		vim.keymap.set("n", "<leader>do", dap.step_out, opts)

		opts.desc = "Toggle Scopes sidebar for variable inspection"
		vim.keymap.set("n", "<leader>ds", widgets.sidebar(widgets.scopes).toggle, opts)

		opts.desc = "Toggle Frames sidebar for call frames"
		vim.keymap.set("n", "<leader>df", widgets.sidebar(widgets.frames).toggle, opts)

		opts.desc = "Show hover documentation for the symbol under cursor"
		vim.keymap.set("n", "<leader>dv", widgets.hover, opts)
	end,
}

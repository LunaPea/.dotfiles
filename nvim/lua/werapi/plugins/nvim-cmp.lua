return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"simrat39/rust-tools.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"mfussenegger/nvim-dap",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		-- "L3MON4D3/LuaSnip",
		-- "saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"petertriho/cmp-git",
		"onsails/lspkind.nvim",
	},
	config = function()
		-- Set up nvim-cmp.
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local rt = require("rust-tools")

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			opts.desc = "Show LSP references, and definitions"
			vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

			opts.desc = "Go to declaration"
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Show LSP definitions"
			vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

			opts.desc = "Show LSP implementations"
			vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

			opts.desc = "Show LSP type definitions"
			vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

			opts.desc = "See available code actions"
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

			opts.desc = "Smart rename"
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)

			opts.desc = "Show buffer diagnostics"
			vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

			opts.desc = "Show line diagnostics"
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

			opts.desc = "Go to previous diagnostic"
			vim.keymap.set("n", "gpd", vim.diagnostic.goto_prev, opts)

			opts.desc = "Go to next diagnostic"
			vim.keymap.set("n", "gnd", vim.diagnostic.goto_next, opts)

			opts.desc = "Show documentation for what is under cursor"
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

			opts.desc = "Restart LSP"
			vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
		end

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
					-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
					-- vim.fn['UltiSnips#Anon'](args.body) -- For `ultisnips` users.
				end,
			},
			window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				-- ["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-CR>"] = cmp.mapping.confirm({ select = true }),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nvim_lsp_signature_help" },
				{ name = "nvim_lua" },
				{ name = "vsnip" }, -- For vsnip users.
				-- { name = 'luasnip' }, -- For luasnip users.
				-- { name = 'ultisnips' }, -- For ultisnips users.
				-- { name = 'snippy' }, -- For snippy users.
				{ name = "buffer" },
				{ name = "path" },
			}),

			formatting = {
				format = lspkind.cmp_format({}),
			},
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
				{ name = "buffer" },
			}),
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
				{ name = "cmdline" },
			}),
		})

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

        vim.diagnostic.config({
          underline = {
            severity = { min = vim.diagnostic.severity.INFO }
          },
          virtual_text = {
            severity = { min = vim.diagnostic.severity.ERROR }
          },
          signs = {
            severity = { min = vim.diagnostic.severity.ERROR }
          }
        })
		-- Set up lspconfig.
		local capabilities = cmp_nvim_lsp.default_capabilities()

		rt.setup({
			server = {
				on_attach = function(client, bufnr) --[[ maybe switch to using default cmp on_attach ]]
					opts.buffer = bufnr
					opts.desc = "Hover actions"
					vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, opts) -- WHAT THA FUCK
					opts.desc = "Code action groups"
					vim.keymap.set("n", "<leader>rca", rt.code_action_group.code_action_group, opts)
					opts.desc = "Select rust debuggables"
					vim.keymap.set("n", "<leader>drd", rt.debuggables.debuggables, opts)
					on_attach(client, bufnr)
				end,
				capabilities = capabilities,
			},
		})
		lspconfig["marksman"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["clangd"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["pylsp"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		lspconfig["wgsl_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
		vim.filetype.add({
			extension = {
				wgsl = "wgsl",
			},
		})
	end,
}

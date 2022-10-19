return require'packer'.startup(function(use)
	use 'wbthomason/packer.nvim' -- Package manager
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'
	use 'lewis6991/impatient.nvim'
	use 'tpope/vim-commentary'
	use 'airblade/vim-gitgutter'

	use {
		'rust-lang/rust.vim',
		config = function() vim.cmd('let g:rustfmt_autosave = 1 \n let g:rust_fold = 1') end,
	}

	use {
		'WeraPea/comfortable-motion.vim',
		config = function()
			vim.cmd('let g:comfortable_motion_no_default_key_map = 1')
			vim.keymap.set('n', '<ScroolWheelDown>', ':call comfortable_motion#flick(40)<CR>', { noremap = true, silent = true })
			vim.keymap.set('n', '<ScroolWheelUp>', ':call comfortable_motion#flick(-40)<CR>', { noremap = true, silent = true })

			vim.keymap.set('n', '<C-d>', ':call comfortable_motion#flick(40)<CR>', { noremap = true, silent = true })
			vim.keymap.set('n', '<C-u>', ':call comfortable_motion#flick(-40)<CR>', { noremap = true, silent = true })
		end,
	}

	use {
		'brenoprata10/nvim-highlight-colors',
		config = function() require('nvim-highlight-colors').setup {} end,
	}

	use {
		'terryma/vim-expand-region',
		config = function()
			vim.keymap.set('v', 'v', '<Plug>(expand_region_expand)', {})
		end,
	}

	use {
		'mbbill/undotree',
		config = function() vim.keymap.set('n', '<F5>', ":UndoTreeToggle<CR>", { silent = true, noremap = true }) end,
	}

	use {
		'rcarriga/nvim-notify',
		config = function() vim.notify = require("notify") end,
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function() require('config.lualine') end,
	}
	use {
		'nanozuki/tabby.nvim',
		config = function() require('config.tabby') end,
	}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
		config = function() require('config.treesitter') end,
    }

	-- Configurations for Nvim LSP
	use {
		"neovim/nvim-lspconfig",
		requires = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", 'simrat39/rust-tools.nvim' },
        config = function() require('lsp') end,
	}
	use {
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
			-- Disable virtual_text since it's redundant due to lsp_lines.
			vim.diagnostic.config({
				virtual_text = false,
			})
		end,
	}

	-- COQ.nvim
    use {
        'ms-jpq/coq_nvim',
        run = 'python3 -m coq deps',
        config = function() require('config.coq') end,
    }
    -- Integrations for COQ.nvim
    use {
        'ms-jpq/coq.thirdparty',
        config = function() require('config.coq_3p') end,
    }
end)

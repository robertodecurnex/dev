-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--[[
	use ({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup({
				variant = "main",
				dark_variant = "main"
			})
			vim.cmd('colorscheme rose-pine')
		end
	})
	--]]

	use ({
		'rebelot/kanagawa.nvim',
		as = 'kanagawa',
		config = function()
			require('kanagawa').setup({
				theme = "dragon",
				background = {
					dark = "dragon",
					light = "dragon"
				}
			})
			vim.cmd('colorscheme kanagawa')
		end
	})

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use ('mbbill/undotree')

	use ('tpope/vim-fugitive')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
		    {'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}
end)

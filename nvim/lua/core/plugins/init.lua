vim.cmd "packadd packer.nvim"

local plugin = {
	["folke/tokyonight.nvim"] = {
		after = "nvim-lspconfig",
		opt = true,
		config = require ("core.plugins.configs.theme")
	},
	["neovim/nvim-lspconfig"] = {
		requires = {
			'williamboman/nvim-lsp-installer'
		},
		config = require("core.plugins.configs.lspconfig")
	},
	["williamboman/nvim-lsp-installer"] = {
		config = require("nvim-lsp-installer").setup {}
	},
	["nvim-treesitter/nvim-treesitter"] = {
		config = function()
			require("core.plugins.configs.nvimtreesit")
		end
	},
	["kyazdani42/nvim-tree.lua"] = {
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		config = require("core.plugins.configs.nvimtree")
	},
	["nvim-lua/plenary.nvim"] = { module = "plenary" },
	["kyazdani42/nvim-web-devicons"] = {
		after = "nvim-treesitter"

	},
	["nvim-lualine/lualine.nvim"] = {
		requires = { 
			'kyazdani42/nvim-web-devicons', opt = true
		},
		config = require "lualine".setup()
	},
	["andweeb/presence.nvim"] = {
		config = require("core.plugins.configs.presence")
	}
}
require("core.plugins.packer").install(plugin)

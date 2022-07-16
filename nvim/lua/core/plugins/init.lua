vim.cmd "packadd packer.nvim"

local plugin = {
	["folke/tokyonight.nvim"] = {
		after = "nvim-lspconfig",
		opt = true,
		config = require("core.plugins.configs.theme")
	},
	["neovim/nvim-lspconfig"] = {
		requires = {
			'williamboman/nvim-lsp-installer'
		},
		config = require("core.plugins.configs.lspconfig")
	},
	["williamboman/nvim-lsp-installer"] = {
		config = require 'nvim-lsp-installer'.setup()
	},
	["nvim-treesitter/nvim-treesitter"] = {
		config = require("core.plugins.configs.treesitter")
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
		config = require('lualine').setup()
	},
	["andweeb/presence.nvim"] = {
		config = require("core.plugins.configs.presence")
	},
	["jayden-chan/base46.nvim"] = {
		config = require("core.plugins.configs.base46")
	}
}
require("core.plugins.packer").install(plugin)

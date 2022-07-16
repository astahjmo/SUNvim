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
		config = function()
			local present, lspintaller = pcall(require, 'nvim-lsp-installer')
			if not present then
				return
			end
			lspinstaller.setup()
		end
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

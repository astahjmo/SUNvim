vim.cmd "packadd packer.nvim"

local plugin = {
	["folke/tokyonight.nvim"] = {
		after = "nvim-lspconfig",
		opt = true,
		config = require ("lua.core.plugins.configs.theme")
	},
	["neovim/nvim-lspconfig"] = {
	},
	["nvim-treesitter/nvim-treesitter"] = {
		config = function() require "nvim-treesitter.configs".setup{}
		end
	},
	["neovim/nvim-lspconfig"] = {

	},
	["kyazdani42/nvim-tree.lua"] = {
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		cmd = "NvimTreeToggle",
		setup = function()
			require("nvim-tree").setup()
		end
	},
	["nvim-lua/plenary.nvim"] = { module = "plenary" },
}
require("lua.core.plugins.packer").install(plugin)

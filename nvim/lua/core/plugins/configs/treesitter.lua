local present, treesitter = pcall(require, "nvim-treesitter.configs")
local M = {}

if not present then
	return
end

M.options = {
	ensure_installed = { "c", "lua", "rust" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,
	},
}

treesitter.setup(M.options)

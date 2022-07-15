local M = {}

M.init = function ()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

	if fn.empty(fn.glob(install_path)) > 0 then
		packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		print("Starting core PACKER for plugins manager!")
		-- Install core plugins and start packer
		vim.cmd "packadd packer.nvim"
		require "core.plugins.init"
		if packer_bootstrap then
			require('packer').sync()
		end

	end      
end
M.options = {
   auto_clean = true,
   compile_on_sync = true,
   git = { clone_timeout = 6000 },
   display = {
      working_sym = "ﲊ",
      error_sym = "✗ ",
      done_sym = " ",
      removed_sym = " ",
      moved_sym = "",
      open_fn = function()
         return require("packer.util").float { border = "single" }
      end,
   },
}

M.install = function(plugins)
	local a, packer = pcall(require, "packer")
	if not a then
		return
	end

	packer.init(M.options)
	packer.startup(function(user)
		for plugin, _ in pairs(plugins) do
			use(plugin)
		end
	end)
end
return M

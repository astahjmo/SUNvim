-- exit if it can't be found
local present, base46 = pcall(require, "base46")
if not present then
   return
end

local theme_opts = {
   base = "base46",
   theme = "tokyonight",
   transparency = false,
}

base46.load_theme(theme_opts)

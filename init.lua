-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.base")
require("config.theme_config")
require("config.ts_tools")

-- Make lualine transparent with tokyonight theme.
local ll_theme = require("lualine.themes.tokyonight")
ll_theme.normal.c.bg = "None"
require("lualine").setup({ options = { theme = ll_theme } })

vim.cmd("colorscheme tokyonight")
vim.opt.pumblend = 0 -- disable transparency for cmp menu
vim.opt.winblend = 0 -- disable transparency for documentation popup

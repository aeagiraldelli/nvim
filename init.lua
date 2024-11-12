-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.base")
require("config.theme_config")
require("config.ts_tools")
vim.cmd("colorscheme catppuccin")
vim.opt.pumblend = 0 -- disable transparency for cmp menu
vim.opt.winblend = 0 -- disable transparency for documentation popup

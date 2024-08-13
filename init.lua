-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.theme_config")
vim.cmd("colorscheme nightfox")
vim.opt.pumblend = 0 -- disable transparency for cmp menu
vim.opt.winblend = 0 -- disable transparency for documentation popup

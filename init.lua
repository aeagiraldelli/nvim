-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin")
require("lualine").setup({
  options = {
    theme = "catppuccin",
  },
})

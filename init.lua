-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nightfox").setup({
  options = {
    transparent = true,
  },
})
require("lualine").setup({
  options = {
    theme = "auto",
  },
})

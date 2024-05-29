-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  style = "night",
})
require("lualine").setup({
  options = {
    theme = "tokyonight",
  },
})

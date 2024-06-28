-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("tokyonight").setup({
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent",
    floats = "transparent",
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})

require("rose-pine").setup({
  variant = "auto", -- auto, main, moon, or dawn
  dark_variant = "main", -- main, moon, or dawn
  dim_inactive_windows = false,
  extend_background_behind_borders = true,
  enable = {
    terminal = true,
    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    migrations = true, -- Handle deprecated options automatically
  },
})

require("nightfox").setup({
  options = {
    transparent = true,
  },
})

require("eldritch").setup({
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent",
    floats = "transparent",
  },
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})

require("lualine").setup({
  options = {
    theme = "auto",
  },
})

vim.g.rasmus_transparent = true
vim.cmd.colorscheme("rasmus")

require("colorbuddy")
require("nightfox")

require("tokyonight").setup({
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "normal",
    floats = "normal",
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
  styles = {
    bold = true,
    italic = false,
    transparency = false,
  },
})

require("neomodern").setup({
  transparent = false,
})

require("lualine")

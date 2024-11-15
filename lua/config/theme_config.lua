require("colorbuddy")
require("nightfox")
require("catppuccin").setup({
  transparent_background = true,
})

require("kanagawa").setup({
  transparent = true, -- do not set background color
  keywordStyle = { italic = false },
  statementStyle = { bold = false },
  background = { -- map the value of 'background' option to a theme
    dark = "wave", -- try "dragon" !
    light = "lotus",
  },
  colors = {
    theme = {
      all = {
        ui = {
          bg_gutter = "none",
        },
      },
    },
  },
})

require("tokyonight").setup({
  transparent = true,
  style = "night",
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent",
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
  transparent = true,
})

require("lualine").setup({
  options = { theme = "auto", section_separators = "", component_separators = "" },
})

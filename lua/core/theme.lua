require('tokyonight').setup {
  transparent = true, -- Enable this to disable setting the background color
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = 'transparent', -- style for sidebars, see below
    floats = 'transparent', -- style for floating windows
  },
}

require('nordic').setup {
  bold_keywords = false,
  italic_comments = true,
  transparent = {
    bg = true,
    float = true,
  },
  telescope = {
    -- Available styles: `classic`, `flat`.
    style = 'classic',
  },
}

vim.cmd [[colorscheme tokyonight]]

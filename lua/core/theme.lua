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

-- Default options
require('nightfox').setup {
  options = {
    transparent = true, -- Disable setting background
    styles = { -- Style to be applied to different syntax groups
      comments = 'italic', -- Value is any valid attr-list value `:help attr-list`
      conditionals = 'NONE',
      constants = 'NONE',
      functions = 'NONE',
      keywords = 'NONE',
      numbers = 'NONE',
      operators = 'NONE',
      strings = 'NONE',
      types = 'NONE',
      variables = 'NONE',
    },
  },
}

require('vague').setup {
  transparent = true, -- don't set background
}

-- setup must be called before loading
-- vim.cmd [[colorscheme vague]]

require('onedark').setup {
  style = 'darker',
}
require('onedark').load()

require('github-theme').setup {
  options = {
    transparent = true,
    styles = {
      comments = 'italic',
    },
  },
}

-- setup must be called before loading
vim.cmd [[colorscheme github_dark_default]]

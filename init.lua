require 'core.keymaps'
require 'core.options'
require 'core.snippets'
require 'core.health'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins.neotree',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.gitsigns',
  require 'plugins.lsp',
  require 'plugins.autoformat',
  require 'plugins.autocompletion',
  require 'plugins.colorscheme',
  require 'plugins.todo-highlights',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.indent-blankline',
  require 'plugins.comment',
  require 'plugins.autopairs',
  require 'plugins.lualine',
  require 'plugins.lint',
  require 'plugins.typescript-tools',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

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

vim.cmd [[colorscheme tokyonight]]

-- Configure lualine transparency for tokyonight theme.
local luatokyo = require 'lualine.themes.tokyonight'
luatokyo.normal.c.bg = 'None'
require('lualine').setup { options = { theme = luatokyo } }

return {
  { "rebelot/kanagawa.nvim" },
  { "embark-theme/vim" },
  { "cocopon/iceberg.vim" },
  { "EdenEast/nightfox.nvim" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      style = "night",
    },
  },
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,

    -- optionally set the colorscheme within lazy config
    init = function()
      vim.cmd("colorscheme poimandres")
    end,
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "jim-at-jibba/ariake.nvim",
    config = function()
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "akinsho/horizon.nvim",
    version = "*",
    opts = {
      plugins = {
        cmp = true,
        indent_blankline = true,
        nvim_tree = true,
        telescope = true,
        which_key = true,
        barbar = true,
        notify = true,
        symbols_outline = true,
        neo_tree = true,
        gitsigns = true,
        crates = true,
        hop = true,
        navic = true,
        quickscope = true,
        flash = true,
      },
    },
  },
}

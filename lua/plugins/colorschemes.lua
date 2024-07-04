return {
  { "rebelot/kanagawa.nvim" },
  { "embark-theme/vim" },
  { "cocopon/iceberg.vim" },
  { "EdenEast/nightfox.nvim" },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/sonokai" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "rockerBOO/boo-colorscheme-nvim" },
  { "fenetikm/falcon" },
  { "AlexvZyl/nordic.nvim" },
  { "kvrohit/rasmus.nvim" },
  { "Yazeed1s/oh-lucy.nvim" },
  { "ribru17/bamboo.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
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
    opts = {
      transparent_background = true,
    },
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
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "cdmill/neomodern.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("neomodern").setup({
        -- optional configuration here
      })
      require("neomodern").load()
    end,
  },
}

return {
  { "rebelot/kanagawa.nvim" },
  { "cocopon/iceberg.vim" },
  { "EdenEast/nightfox.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "kvrohit/rasmus.nvim" },
  { "jordanbrauer/citylights.nvim", dependencies = {
    "tjdevries/colorbuddy.vim",
  } },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
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

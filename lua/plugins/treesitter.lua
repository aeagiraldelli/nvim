return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function(_, opts)
    require("nvim-treesitter").install({
      "lua",
      "vim",
      "vimdoc",
      "c",
      "cpp",
      "python",
      "javascript",
      "typescript",
      "html",
      "css",
      "json",
      "bash",
      "go" })
  end,
}

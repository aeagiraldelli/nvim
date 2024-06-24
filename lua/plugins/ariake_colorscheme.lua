return {
  {
    "jim-at-jibba/ariake.nvim",
    config = function()
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      -- vim.cmd.colorscheme("ariake")
    end,
  },
}

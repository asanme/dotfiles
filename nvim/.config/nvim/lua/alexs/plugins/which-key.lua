return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    timeout = true,
    timeoutlen = 1000,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ mode = "n", auto = false })
      end,
      desc = "Show which-key",
    },
  },
}

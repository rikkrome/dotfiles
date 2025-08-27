return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require('which-key')
    wk.setup {
      plugins = {
        spelling = { enabled = true },
        presets = { operators = false },
      },
      win = {
        padding = { 4, 4, 4, 4 },
      },
    }

    local mappings = {
    { "<leader>g", group = "Git ->" },
    { "<leader>p", group = "Projects ->" },
    { "<leader>pg", group = "Project Git -> " },
    { "<leader>ps", group = "Project Search -> " },
    { "<leader>s", group = "Search ->" },
  }

    wk.add(mappings)
  end
}

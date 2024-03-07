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
      window = {
        --border = "rounded",
        padding = { 4, 4, 4, 4 },
      },
    }

    local mappings = {
      ["<leader>"] = {
        p = {
          name = "Projects ->",
          g = { name = "Git -> " },
          s = { name = "Search -> " }
        },
        g = { name = "Git ->" },
        s = { name = "Search ->" },
      },
    }

    wk.register(mappings)
  end
}

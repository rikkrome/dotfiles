local telescope = require('telescope')
local builtin = require('telescope.builtin')

local fb_actions = telescope.extensions.file_browser.actions

telescope.setup {
  extensions = {
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<C-h>"] = fb_actions.goto_home_dir,
          ["<C-n>"] = fb_actions.create,
          ["<C-y>"] = fb_actions.copy,
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

telescope.load_extension "file_browser"

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "find files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = "project git files" })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "grep search" })

vim.keymap.set('n', '<leader>pv', ":Telescope file_browser<CR>", { noremap = true, desc = "project view file browser" })

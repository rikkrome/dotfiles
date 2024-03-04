local telescope = require('telescope')
local builtin = require('telescope.builtin')

local fb_actions = telescope.extensions.file_browser.actions
local media_actions = telescope.extensions.media_files.media_files

telescope.setup {
  extensions = {
    file_browser = {
      theme = "dropdown",
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
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg" },
    }
  },
}

telescope.load_extension("file_browser", "frecency", "media_files")

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "find files" })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pgf', builtin.git_files, { desc = "project git files" })
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "grep search" })

vim.keymap.set('n', '<leader>pv', ":Telescope file_browser<CR>", { noremap = true, desc = "project view file browser" })
vim.keymap.set('n', '<leader>pe', vim.cmd.Ex, { noremap = true, desc = "project Ex" })

vim.keymap.set('n', '<leader>pm', media_actions, { desc = "find media" })

vim.keymap.set('n', '<leader>pgs', ":Telescope git_status<CR>", { noremap = true, desc = "Git Status" })

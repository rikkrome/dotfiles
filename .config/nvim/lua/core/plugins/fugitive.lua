return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git" })
    vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiff, { desc = "Git Diff" })
  end
}

vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "projet view" })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move hightlight up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move hightlight down

vim.keymap.set("n", "J", "mzJ`z") -- move bottom line to the end without moving cursor

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move down the file without moving cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move up the file without moving cursor

vim.keymap.set("n", "n", "nzzzv") -- search without moving cursor
vim.keymap.set("n", "N", "Nzzzv") -- search without moving cursor

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "paste without losing copy" }) -- paste without losing copy

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "copy to system clipboard" }) -- copy to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "copy to system clipboard" }) -- copy to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>") -- disable Q 
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- switch between projets  

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format" })

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "search & replace" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "chmod +x file" })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/core/packer.lua<CR>");

-- New tab
vim.keymap.set('n', 'te', ':tabedit')
-- Split window
vim.keymap.set('n', '<leader>ss', ':split<Return><C-w>w', { desc = "Split window horizontally" })
vim.keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { desc = "Split window vertically" })
-- Move window
vim.keymap.set('n', '<A-UP>', '<C-w>k')
vim.keymap.set('n', '<A-DOWN>', '<C-w>j')
vim.keymap.set('n', '<A-LEFT>', '<C-w>h')
vim.keymap.set('n', '<A-RIGHT>', '<C-w>l')

-- basic 
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = "Save" })
vim.keymap.set('n', '<leader>q', vim.cmd.wq, { desc = "Save & Quit" })
vim.keymap.set('n', '<leader>e', vim.cmd.e, { desc = "Reload file" })

vim.g.mapleader = " "
vim.g.do_filetype_lua = 1 -- use filetype.lua
vim.g.did_load_filetypes = 0 -- don't use filetype.vim

vim.opt.relativenumber = true -- Show relative numberline
vim.opt.nu = true -- Show current numberline

vim.opt.clipboard = "unnamedplus" -- Connection to the system clipboard

vim.opt.tabstop = 4 -- Number of space in a tab
vim.opt.expandtab = true -- Enable the use of space in tab
vim.opt.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
vim.opt.smartindent = true -- When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.

vim.opt.wrap = false -- Disable wrapping of lines longer than the width of window

vim.opt.swapfile = false -- Disable use of swapfile for the buffer
vim.opt.backup = false -- Make a backup before overwriting a file.
vim.opt.writebackup = false -- Make a backup before overwriting a file.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true -- im automatically saves undo history to an undo file when writing a buffer to a file

vim.opt.hlsearch = false -- When there is a previous search pattern, highlight all its matches.
vim.opt.incsearch = true -- While typing a search command, show where the pattern, as it was typed so far, matches.

vim.opt.termguicolors = true -- Enable 24-bit RGB color in the TUI

vim.opt.scrolloff = 8 -- Number of lines to keep above and below the cursor
vim.opt.signcolumn = "yes" -- Always show the sign column

vim.opt.updatetime = 300 -- Length of time to wait before triggering the plugin

vim.opt.colorcolumn = "80" -- comma-separated list of screen columns that are highlighted with ColorColumn


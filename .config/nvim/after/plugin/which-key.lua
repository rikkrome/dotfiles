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
        p = { name = "Projects" },
    },
}

wk.register(mappings)

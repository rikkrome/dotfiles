vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function()

    -- Plugin manager
    use {'wbthomason/packer.nvim', opt = true}

    -- Optimiser
    use 'lewis6991/impatient.nvim'

    -- Lua functions
    use {'nvim-lua/plenary.nvim', module = 'plenary' }

    -- Popup API
    use 'nvim-lua/popup.nvim'

    -- Indent detectio
    use {
        'Darazaki/indent-o-matic', 
        event = 'BufReadPost',
        config = function() require "configs.indent-o-matic" end,
    }

    -- Notification Enhancer
    use {
        'rcarriga/nvim-notify', 
        event = 'VimEnter',
        config = function() require "configs.notify" end,
    }

    -- Neovim UI Enhancer
    use {
        'MunifTanjim/nui.nvim', 
        module = 'nui'
    }

    -- Cursorhold fix
    use {
        'antoinemadec/FixCursorHold.nvim', 
        event = { 'BufRead', 'BufNewFile' }, 
        config = function() vim.g.cursorhold_updatetime = 100 end
    }

    -- Smarter Splits
    use {
        'mrjones2014/smart-splits.nvim',
        module = 'smart-splits',
        config = function() require "configs.smart-splits" end,
    }

    -- Icons
    use {
        'kyazdani42/nvim-web-devicons', 
        event = 'VimEnter',
        config = function() require "configs.icons" end,
    }

    -- Bufferline
    use { 
        'akinsho/bufferline.nvim', 
        after = 'nvim-web-devicons',
        config = function() require "configs.bufferline" end,
    }

    -- Better buffer closing
    use { 'famiu/bufdelete.nvim', cmd = { 'Bdelete', 'Bwipeout' }}

    -- File explorer
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
        module = "neo-tree",
        cmd = "Neotree",
        requires = { 
            "MunifTanjim/nui.nvim", 
            "nvim-lua/plenary.nvim" 
        },
        setup = function() vim.g.neo_tree_remove_legacy_commands = true end,
        config = function() require "configs.neo-tree" end,
    }

    -- Statusline
    use {
        'feline-nvim/feline.nvim',
        after = "nvim-web-devicons",
        config = function() require "configs.feline" end,
    }
    -- Syntax highlighting
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- Parenthesis highlighting
    use {
        'p00f/nvim-ts-rainbow', 
        after = 'nvim-treesitter'
    }
     -- Autoclose tags
    use {
        'windwp/nvim-ts-autotag', 
        after = 'nvim-treesitter'
    }
    -- Context based commenting
    use {'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter'}
    -- Snippet collection
    use {'rafamadriz/friendly-snippets', opt = true }
    -- Snippet engine
    use {
        'L3MON4D3/LuaSnip', 
        module = 'luasnip',
        wants = "friendly-snippets",
    }
    -- Completion engine
    use { 
        'hrsh7th/nvim-cmp',
        event = "InsertEnter",
    }
    -- Snippet completion source
    use {
        'saadparwaiz1/cmp_luasnip',
         after = "nvim-cmp",
    }
    -- Buffer completion source
    use {'hrsh7th/cmp-buffer', after = 'nvim-cmp'}
     -- Path completion source
    use {'hrsh7th/cmp-path', after = 'nvim-cmp'}
     -- LSP completion source
    use {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp'}
    -- Built-in LSP
    use {'neovim/nvim-lspconfig', event = 'VimEnter'}
    -- LSP manager
    use {
        'williamboman/nvim-lsp-installer',
        after = "nvim-lspconfig",
    }
    -- LSP symbols
    use {
        'stevearc/aerial.nvim', 
        module = "aerial",
        cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    }
    -- Formatting and linting
    use {
        'jose-elias-alvarez/null-ls.nvim',
        event = { "BufRead", "BufNewFile" },
    }
    -- Fuzzy finder
     use {
        'nvim-telescope/telescope.nvim',
        cmd = "Telescope",
        module = "telescope",
     }
    -- Fuzzy finder syntax support
    -- Git integration
    use {'lewis6991/gitsigns.nvim', event = "BufEnter" }
    -- Start screen
    use {
        'goolord/alpha-nvim', 
        cmd = "Alpha",
        module = "alpha",
    }

    -- Color highlighting
    use {'norcalli/nvim-colorizer.lua', event = { "BufRead", "BufNewFile" } }

    -- Autopairs
    use {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
    }

    -- Terminal
    use {
        'akinsho/toggleterm.nvim',
        cmd = "ToggleTerm",
        module = { "toggleterm", "toggleterm.terminal" },
    }

    -- Commenting
    use {
        'numToStr/Comment.nvim',
        module = { "Comment", "Comment.api" },
        keys = { "gc", "gb", "g<", "g>" },
    }

    -- Indentation
    use {
        'lukas-reineke/indent-blankline.nvim',
        event = "BufRead",
    }

    -- Keymaps popup
    use {
        'folke/which-key.nvim',
        module = "which-key",
    }

    -- Smooth scrolling
    use {
        'declancm/cinnamon.nvim',
        event = { "BufRead", "BufNewFile" },
    }

    -- Smooth escaping
    use {
        'max397574/better-escape.nvim',
        event = "InsertCharPre",
    }

    -- Get extra JSON schemas
    use {
        'b0o/SchemaStore.nvim',
        module = "schemastore"
    }

    -- Session manager
    use {
        'Shatur/neovim-session-manager',
        cmd = "SessionManager",
        event = "BufWritePost",
    }

end)

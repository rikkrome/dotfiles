return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        transparent = true,     -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          -- sidebars = "dark", -- style for sidebars, see below
          -- floats = "dark",   -- style for floating windows
          sidebars = "transparent",
          floats = "transparent"
        },
        dim_inactive = true,
        on_highlights = function(hl, c)
          hl.CursorLine = {
            bg = c.bg_highlight,
          }
          hl.CursorLineNr = {
            fg = c.blue,
          }
          hl.LineNr = {
            fg = c.fg_dark
          }
          -- gitSigns
          hl.GitSignsAdd = {
            fg = "#fa9500",
          }
          hl.GitSignsChange = {
            fg = "#FFE45E"
          }
          hl.GitSignsDelete = {
            fg = "#EB6424"
          }
          -- Telescope
          hl.TelescopeNormal = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopeBorder = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopePromptNormal = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopePromptBorder = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopePromptTitle = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopePreviewTitle = {
            bg = "#000000",
            fg = "#ffffff",
          }
          hl.TelescopeResultsTitle = {
            bg = "#000000",
            fg = "#ffffff",
          }
        end,
      })
      vim.cmd [[colorscheme tokyonight]]
      -- remove theme BG color
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
  },
}

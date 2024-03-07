return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local tt = require("toggleterm")
    tt.setup({
      size = 20,
      open_mapping = [[<c-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved'
      }
    })
  end
}

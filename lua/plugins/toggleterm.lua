return {
  "akinsho/toggleterm.nvim",
  config = function()
    local tterm = require("toggleterm")
    tterm.setup({
      size = 15,
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      direction = "horizontal"
    })
  end
}

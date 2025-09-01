-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd.colorscheme("ayu-light")

require('lualine').setup({
  options = {
    theme = 'ayu',
  },
})

vim.o.termguicolors = true

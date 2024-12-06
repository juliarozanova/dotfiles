return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "neanias/everforest-nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "marko-cerovac/material.nvim" },
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

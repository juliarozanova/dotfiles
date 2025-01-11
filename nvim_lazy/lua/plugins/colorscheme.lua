return {
  -- add gruvbox
  { "juliarozanova/dopamine.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "neanias/everforest-nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/edge" },
  { "marko-cerovac/material.nvim" },
  { "catppuccin/nvim",            name = "catppuccin", lazy = false, priority = 1000 },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      vim.g.sonokai_style = 'julia'
      -- vim.cmd.colorscheme('sonokai')
    end
  }
}

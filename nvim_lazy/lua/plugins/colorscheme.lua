return {
  { "juliarozanova/dopamine.nvim" },
  -- { "juliarozanova/dopamine-light" },
  { "ellisonleao/gruvbox.nvim" },
  { "neanias/everforest-nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/edge" },
  { "marko-cerovac/material.nvim" },
  -- { "Shatur/neovim-ayu" },
  { "nvimdev/zephyr-nvim" },
  { "catppuccin/nvim",            name = "catppuccin", lazy = false, priority = 1000 },

  {
    "dopamine-light",
    dir = "/home/juliaroz/code/dopamine-light",
    lazy = false,
    priority = 1000,
    config = function()
      -- Your config logic here
      require("dopamine-light").setup()
    end,
  }
}

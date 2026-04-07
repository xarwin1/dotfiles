return {
  { "catppuccin/nvim", name = "catppuccin", 
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "catppuccin-mocha"
        end
    },
    {
      "nvim-lualine/lualine.nvim",
      dependencies = {
          "nvim-tree/nvim-web-devicons",
     },
     opts = {
          theme = "auto",
   } 
    },
    {
      'brenoprata10/nvim-highlight-colors',
      config = function()
        require('nvim-highlight-colors').setup({})
      end
    },
}

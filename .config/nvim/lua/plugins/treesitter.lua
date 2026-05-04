return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter').install { 'c', 'lua', 'tsx', 'jsx', 'json', 'python' }
  end
}

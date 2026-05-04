vim.opt.number = true
vim.opt.rnu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.sidescrolloff = 8
vim.opt.scrolloff = 10
vim.opt.clipboard = "unnamedplus"
vim.opt.iskeyword:append('-')
vim.cmd.background = "dark"
vim.cmd.colorscheme = "oxocarbon"
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

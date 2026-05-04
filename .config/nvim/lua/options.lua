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

vim.opt.guicursor = {
  "n-v-c:block-blinkon200-blinkoff150",          -- Normal, Visual, Command: block
  "i-ci:ver25-blinkon200-blinkoff150", -- Insert: vertical line (25% width), blinking
  "r-cr:hor20",           -- Replace: horizontal line
}

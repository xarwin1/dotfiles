vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- Sane defaults
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jj', '<Esc>')

-- Move entire lines up or down respectively

vim.keymap.set('n', '<C-k>', ':m -2<Return>')
vim.keymap.set('n', '<C-j>', ':m +1<Return>')

-- Move between buffers

vim.keymap.set('n', '<leader>bp', ':bp<Return>')
vim.keymap.set('n', '<leader>bn', ':bn<Return>')

-- enable or disable diagnostics

vim.keymap.set('n', '<leader>dt', function()
    if vim.diagnostic.is_enabled() then
        vim.diagnostic.enable(false)
    else
        vim.diagnostic.enable(true)
    end
end)

-- delete without yanking to clipboard

vim.keymap.set('n', '<leader>dd', '"_dd')
vim.keymap.set('x', '<leader>d', '"_d')


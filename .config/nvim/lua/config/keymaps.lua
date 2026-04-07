vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("i", "jj", "<Esc>", { silent = true })


for _, mode in ipairs({ 'n', 'i', 'v' }) do
  for _, key in ipairs({ '<Up>', '<Down>', '<Left>', '<Right>' }) do
    vim.keymap.set(mode, key, '<Nop>', { noremap = true, silent = true })
  end
end

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

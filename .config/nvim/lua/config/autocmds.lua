vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    vim.lsp.buf.format({
      bufnr = args.buf,
      async = false,
      filter = function(client)
        -- example: disable formatting for tsserver
        return client.name ~= "tsserver"
      end,
    })
  end,
})

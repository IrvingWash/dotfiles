local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        rust = { "rustfmt" },
        odin = { "odinfmt" },
    }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    conform.format({ bufnr = args.buf })
  end,
})

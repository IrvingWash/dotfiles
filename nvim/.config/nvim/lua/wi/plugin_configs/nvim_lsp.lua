local lspconfig = require("lspconfig")

vim.keymap.set("n", "<leader>x", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>nx", vim.diagnostic.goto_next)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>fx", vim.lsp.buf.code_action)

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
})

lspconfig.wgsl_analyzer.setup({
    capabilities = capabilities,
})

lspconfig.lua_ls.setup({
    capabilities = capabilities,
})

lspconfig.ols.setup({
    capabilities = capabilities,
})

lspconfig.ts_ls.setup({
    capabilities = capabilities,
})

lspconfig.eslint.setup({
    capabilities = capabilities,
})

lspconfig.taplo.setup({
    capabilities = capabilities,
})

lspconfig.glsl_analyzer.setup({
    capabilities = capabilities,
})

lspconfig.gopls.setup({
    capabilities = capabilities,
})

lspconfig.clangd.setup({
    capabilities = capabilities,
})

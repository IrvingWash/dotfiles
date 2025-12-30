local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

vim.keymap.set("n", "<leader>x", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>nx", vim.diagnostic.goto_next)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>fx", vim.lsp.buf.code_action)

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("rust_analyzer", { capabilities = capabilities })
vim.lsp.enable("rust_analyzer")

vim.lsp.config("lua_ls", { capabilities = capabilities })
vim.lsp.enable("lua_ls")

vim.lsp.config("glsl_analyzer", { capabilities = capabilities })
vim.lsp.enable("glsl_analyzer")

vim.lsp.config("gopls", { capabilities = capabilities })
vim.lsp.enable("gopls")

vim.lsp.config("clangd", { capabilities = capabilities })
vim.lsp.enable("clangd")

vim.lsp.config("ts_ls", { capabilities = capabilities })
vim.lsp.enable("ts_ls")

vim.lsp.config("eslint", { capabilities = capabilities })
vim.lsp.enable("eslint")

vim.lsp.config("hyprls", { capabilities = capabilities })
vim.lsp.enable("hyprls")

vim.lsp.config("tinymist", { capabilities = capabilities })
vim.lsp.enable("tinymist")

vim.lsp.enable("cspell_ls")

if not configs.jails then
    configs.jails = {
        default_config = {
            cmd = { "jails" },
            root_dir = lspconfig.util.root_pattern(".git"),
            filetypes = { "jai" },
        },
    }
end

lspconfig.jails.setup({
    capabilities = capabilities,
})

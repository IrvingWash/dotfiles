local cmp = require("cmp")

cmp.setup {
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
    }),
    mapping = cmp.mapping.preset.insert({
        ["<TAB>"] = cmp.mapping.select_next_item(),
        ["<S-TAB>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-k>"] = cmp.mapping.complete(),
    }),
    formattin = {
        format = require("nvim-highlight-colors").format
    },
}

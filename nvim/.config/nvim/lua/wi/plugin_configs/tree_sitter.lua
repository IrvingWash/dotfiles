require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "lua",
        "markdown",
        "html",
        "css",
        "typescript",
        "rust",
        "go",
        "glsl",
    },
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    }
})

require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "c",
        "lua",
        "markdown",
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
    },
})

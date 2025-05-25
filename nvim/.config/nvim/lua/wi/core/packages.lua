-- boostrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local nvim_tree_web_dev_icons = "nvim-tree/nvim-web-devicons"

local neo_tree = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
}

local catpuccin = { "catppuccin/nvim", name = "catppuccin" }

local mason = {
    "williamboman/mason.nvim",
}

local tree_sitter = {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
}

local lsp_config = {
    "neovim/nvim-lspconfig",
}

local nvim_cmp = {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
}

local conform = {
    "stevearc/conform.nvim",
    opts = {},
}

local telescope = {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
}

local git_signs = "lewis6991/gitsigns.nvim"

local indent_blankline = "lukas-reineke/indent-blankline.nvim"

local vim_illuminate = "RRethy/vim-illuminate"

local diff_view = "sindrets/diffview.nvim"

local lualine = "nvim-lualine/lualine.nvim"

local nvim_colorizer = "norcalli/nvim-colorizer.lua"

local barbar = {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons",
    },
}

local fterm = "numToStr/FTerm.nvim"

local comment = "numToStr/Comment.nvim"

local lsp_signature = {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
}

local github_theme = {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("github-theme").setup({})

        vim.cmd("colorscheme github_light")
    end,
}

local jai = "rluba/jai.vim"

require("lazy").setup({
    checker = { enabled = true },
    spec = {
        nvim_tree_web_dev_icons,
        neo_tree,
        catpuccin,
        mason,
        lsp_config,
        tree_sitter,
        nvim_cmp,
        conform,
        telescope,
        git_signs,
        indent_blankline,
        vim_illuminate,
        diff_view,
        lualine,
        nvim_colorizer,
        barbar,
        fterm,
        comment,
        lsp_signature,
        github_theme,
        jai,
    },
})

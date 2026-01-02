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
local catppuccin = { "catppuccin/nvim", name = "catppuccin", priority = 1000 }

local mason = {
    "williamboman/mason.nvim",
}

local yazi = {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
        { "nvim-lua/plenary.nvim", lazy = true },
    },
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

local lazygit = {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
}

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

local jai = "rluba/jai.vim"

local scratch = {
    "https://git.sr.ht/~swaits/scratch.nvim",
    lazy = true,
}

local telescope_live_grep_args = {
    "nvim-telescope/telescope-live-grep-args.nvim",
    lazy = true,
}

local easy_align = "junegunn/vim-easy-align"

local typst_preview = {
    "chomosuke/typst-preview.nvim",
    lazy = false,
    version = "1.*",
    opts = {},
}

local autopairs = {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
}

local monoglow = {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
}

local luckluster = {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
}

local github_monochrome = {
    "idr4n/github-monochrome.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
}

require("lazy").setup({
    checker = { enabled = true },
    spec = {
        catppuccin,
        yazi,
        mason,
        lsp_config,
        tree_sitter,
        nvim_cmp,
        conform,
        telescope,
        lazygit,
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
        jai,
        scratch,
        telescope_live_grep_args,
        easy_align,
        typst_preview,
        autopairs,
        monoglow,
        luckluster,
        github_monochrome,
    },
})

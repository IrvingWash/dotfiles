-- Core vim options configuration

local g = vim.g
local opt = vim.opt

opt.background = "light"
opt.scrolloff = 10
opt.mouse = "a"
opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.number = true
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.list = true -- render whitespace
opt.hidden = true -- unload buffers when they are abandoned
opt.listchars = {
    space = "·",
    tab = ">-",
}

-- disable builtins
local builtins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(builtins) do
    g["loaded_" .. plugin] = 1
end

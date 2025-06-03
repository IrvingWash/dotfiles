vim.cmd("colorscheme catppuccin")

local current_hour = tonumber(os.date("%H"))

if current_hour >= 20 or current_hour <= 7 then
    vim.cmd("set background=dark")
else
    vim.cmd("set background=light")
end

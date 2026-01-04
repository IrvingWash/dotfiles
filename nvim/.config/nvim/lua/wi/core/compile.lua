local M = {}

local function find_compile_buf()
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if
            vim.api.nvim_buf_is_loaded(buf)
            and vim.api.nvim_buf_get_name(buf) == "*compile*"
        then
            return buf
        end
    end
end

function M.compile()
    local cmd = vim.fn.input({
        prompt = "Compile command: ",
        completion = "shellcmdline",
        history = "cmdline",
    })

    if cmd == "" then
        return
    end

    local buf = find_compile_buf()

    vim.cmd("tabnew")

    if buf then
        vim.api.nvim_set_current_buf(buf)

        -- Stop previous job if still running
        if vim.b.terminal_job_id then
            vim.fn.jobstop(vim.b.terminal_job_id)
        end

        -- Clear terminal (Ctrl-L)
        vim.api.nvim_chan_send(vim.b.terminal_job_id or 0, "\x0c")
    else
        buf = vim.api.nvim_get_current_buf()
        vim.api.nvim_buf_set_name(buf, "*compile*")

        vim.bo.bufhidden = "hide"
        vim.bo.swapfile = false
        vim.bo.filetype = "compile"
    end

    -- Start terminal job (this sets buftype=terminal internally)
    vim.fn.termopen(cmd, {
        on_exit = function()
            vim.schedule(function()
                if vim.api.nvim_get_current_buf() == buf then
                    vim.cmd("stopinsert")
                end
            end)
        end,
    })

    -- UX
    vim.cmd("startinsert")
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
end

return M

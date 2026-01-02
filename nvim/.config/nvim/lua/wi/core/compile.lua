local compile_buffer = nil
local last_cmd = nil
local namespace = vim.api.nvim_create_namespace("compile_stderr")

-- Highlight for stderr
vim.api.nvim_set_hl(0, "CompileStderr", { fg = "#ff5555" })

vim.keymap.set("n", "<leader>c", function()
    local cmd = vim.fn.input("Compile command: ", last_cmd or "")
    if cmd == "" then
        return
    end

    last_cmd = cmd

    -- Create or reuse buffer
    if not compile_buffer or not vim.api.nvim_buf_is_valid(compile_buffer) then
        compile_buffer = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_buf_set_name(compile_buffer, "[Compile]")
        vim.bo[compile_buffer].buftype = "nofile"
        vim.bo[compile_buffer].bufhidden = "hide"
        vim.bo[compile_buffer].swapfile = false
    end

    -- Show buffer
    vim.cmd("botright split")
    vim.api.nvim_win_set_buf(0, compile_buffer)

    -- Clear buffer
    vim.api.nvim_buf_clear_namespace(compile_buffer, namespace, 0, -1)
    vim.api.nvim_buf_set_lines(
        compile_buffer,
        0,
        -1,
        false,
        { "$ " .. cmd, "" }
    )

    local function append(lines, hl)
        if not lines then
            return
        end
        -- Remove trailing empty line jobstart adds
        if #lines > 0 and lines[#lines] == "" then
            table.remove(lines)
        end
        if #lines == 0 then
            return
        end

        local start = vim.api.nvim_buf_line_count(compile_buffer)
        vim.api.nvim_buf_set_lines(compile_buffer, -1, -1, false, lines)

        if hl then
            for i = 0, #lines - 1 do
                vim.api.nvim_buf_add_highlight(
                    compile_buffer,
                    namespace,
                    hl,
                    start + i,
                    0,
                    -1
                )
            end
        end

        vim.cmd("normal! G")
    end

    -- Run command
    vim.fn.jobstart(cmd, {
        stdout_buffered = false,
        stderr_buffered = false,

        on_stdout = function(_, data)
            append(data, nil)
        end,

        on_stderr = function(_, data)
            append(data, "CompileStderr")
        end,

        on_exit = function()
            append({ "", "[Process finished]" }, nil)
        end,
    })
end, { silent = true })

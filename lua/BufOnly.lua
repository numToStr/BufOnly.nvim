local api = vim.api
local cmd = vim.cmd
local option = api.nvim_buf_get_option

local M = {}

function M.BufOnly()
    local cur = api.nvim_get_current_buf()

    local deleted = 0
    local modified = 0

    -- I think there is a bug in nvim_list_bufs
    -- It doesn't update when bdelete is called
    for _, n in ipairs(api.nvim_list_bufs()) do
        -- To mitigate the above issue I have to check if buffer is loaded or not
        if api.nvim_buf_is_loaded(n) then
            -- If the iter buffer is modified one, then don't do anything
            if option(n, 'modified') then
                modified = modified + 1

            -- if iter is not equal to current buffer and it is modifiable then delete it
            -- `modifiable` check is needed as it will prevent closing file tree ie. NERD_tree
            elseif n ~= cur and option(n, 'modifiable') then
                cmd('bdelete '..n)
                deleted = deleted + 1
            end
        end
    end

    print('BufOnly: '..deleted..' deleted buffer(s), '..modified..' modified buffer(s)')
end

-- cmd [[ command! BufOnly lua BufOnly() ]]

return M

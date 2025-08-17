local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    desc = "highlight on yank",
})

autocmd("BufEnter", {
    callback = function()
        vim.opt.formatoptions:remove({ "c", "r", "o" })
    end,
    desc = "Disable New Line Comment",
})

autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
    desc = "go to last loc when opening a buffer",
})

-- Load the last used colorscheme from file, fallback to default
local colorscheme_file = vim.fn.stdpath("data") .. "/colorscheme.txt"
local current_theme = (vim.fn.filereadable(colorscheme_file) == 1 and vim.fn.readfile(colorscheme_file)[1]) or nil

current_theme = current_theme or "gruber-darker"

vim.cmd.colorscheme(current_theme)

autocmd("ColorScheme", {
    callback = function(args)
        local name = args.match
        if name and #name > 0 then
            vim.fn.writefile({ name }, colorscheme_file)
        end
    end,
})

-- add colorschemes into rtp
vim.defer_fn(function()
    local fs = vim.uv or vim.loop

    local plugins_ok, plugins = pcall(function()
        return require("lazy.core.config").plugins
    end)

    if plugins_ok then
        for _, plugin in pairs(plugins) do
            local colors_path = plugin.dir .. "/colors"
            local handle = fs.fs_scandir(colors_path)
            if handle then
                while true do
                    local file = fs.fs_scandir_next(handle)
                    if not file then
                        break
                    end
                    if file:match("%.vim$") or file:match("%.lua$") then
                        vim.opt.rtp:append(plugin.dir)
                        break
                    end
                end
            end
        end
    end
end, 0) -- delay by 0ms (next tick)

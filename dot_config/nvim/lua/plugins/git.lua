return {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {
        current_line_blame = true,
    },
    cond = function()
        local f = vim.api.nvim_buf_get_name(0)
        return f ~= "" and vim.fn.isdirectory(vim.fn.finddir(".git", vim.fn.fnamemodify(f, ":p:h") .. ";")) ~= 0
    end,
}

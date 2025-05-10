return {
    "lewis6991/gitsigns.nvim",
    -- event = { "BufReadPre", "BufNewFile" },
    event = "VeryLazy",
    cond = function()
        return vim.fn.isdirectory(vim.fn.finddir(".git", ".;")) ~= 0
    end,
}

return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    cond = function()
        local ft = vim.bo.filetype
        return not vim.tbl_contains({ "help", "dashboard", "lazy", "NvimTree", "terminal" }, ft)
    end,
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
}

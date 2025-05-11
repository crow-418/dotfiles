return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        preset = "helix",
        delay = 0,
        height = math.huge,
        icons = {
            mappings = false, -- disable icons in keymaps
        },
        sort = { "alphanum" },
    },
    config = function(_, opts)
        require("which-key").setup(opts)
    end,
}

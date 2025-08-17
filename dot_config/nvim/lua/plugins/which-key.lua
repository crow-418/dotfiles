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
}

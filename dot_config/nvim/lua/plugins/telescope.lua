return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
        { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Telescope resume" },
        { "<leader>ft", "<cmd>Telescope colorscheme<cr>", desc = "Telescope colorscheme" },
    },
    opts = {
        pickers = {
            find_files = {
                hidden = true,
                file_ignore_patterns = {
                    "node_modules",
                    ".git",
                },
            },
            colorscheme = {
                enable_preview = true,
            },
        },
    },
}

return {
    {
        "stevearc/oil.nvim",
        keys = {
            { "-", "<cmd>Oil<cr>", desc = "Open Oil" },
        },
        opts = {
            use_default_keymaps = false,
            default_file_explorer = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["g?"] = { "actions.show_help", mode = "n" },
                ["<CR>"] = "actions.select",
                ["<C-c>"] = { "actions.close", mode = "n" },
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
            },
        },
    },
}

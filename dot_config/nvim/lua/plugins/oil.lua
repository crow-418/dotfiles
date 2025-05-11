return {
    {
        "stevearc/oil.nvim",
        keys = {
            { "-", "<cmd>Oil<cr>", desc = "Open Oil" },
        },
        opts = {
            default_file_explorer = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
            },
        },
    },
}

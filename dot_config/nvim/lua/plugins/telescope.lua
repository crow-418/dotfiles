return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    keys = {
        { "<leader>ff", desc = "Telescope find files" },
        { "<leader>fg", desc = "Telescope live grep" },
        { "<leader>fb", desc = "Telescope buffers" },
        { "<leader>fh", desc = "Telescope help tags" },
        { "<leader>fr", desc = "Telescope resume" },
        { "<leader>ft", desc = "Telescope colorscheme" },
    },
    config = function()
        require("telescope").setup({
            pickers = {
                colorscheme = {
                    enable_preview = true,
                    attach_mappings = function(_, map)
                        map("i", "<CR>", function(prompt_bufnr)
                            local selection = require("telescope.actions.state").get_selected_entry()
                            require("telescope.actions").close(prompt_bufnr)

                            if selection then
                                local name = selection.value
                                local path = vim.fn.stdpath("data") .. "/colorscheme.txt"
                                vim.fn.writefile({ name }, path)
                                vim.cmd("colorscheme " .. name)
                            end
                        end)
                        return true
                    end,
                },
                find_files = {
                    hidden = true, -- This will make find_files show hidden files
                },
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })
        pcall(require("telescope").load_extension, "fzf")
        pcall(require("telescope").load_extension, "ui-select")

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", function()
            require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
        end, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fg", function()
            require("telescope.builtin").live_grep({ hidden = true, no_ignore = true })
        end, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Telescope resume" })
        vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Telescope colorscheme" })
    end,
}

return {
    {
        "saghen/blink.cmp",
        event = "InsertEnter",
        version = "1.*",
        dependencies = { "rafamadriz/friendly-snippets" },
        opts = {
            keymap = { preset = "default" },

            sources = {
                default = { "lsp", "lazydev", "path", "snippets", "buffer" },
                providers = {
                    lazydev = {
                        module = "lazydev.integrations.blink",
                    },
                },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            completion = { documentation = { auto_show = true } },
        },
        opts_extend = { "sources.default" },
    },

    -- lazydev
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}

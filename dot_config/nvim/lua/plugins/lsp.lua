return {
    {
        "j-hui/fidget.nvim",
        event = "LspAttach",
        opts = {
            notification = {
                window = {
                    winblend = 0,
                }
            }
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            servers = {
                lua_ls = {},
                html = {},
                cssls = {},
                clangd = {},
                omnisharp = {},
                bashls = {},
                rust_analyzer = {},
                pyright = {},
                ts_ls = {},
                gopls = {},
            },
        },
        config = function(_, opts)
            local lspconfig = require("lspconfig")
            local capabilities = vim.lsp.protocol.make_client_capabilities()

            for server, server_opts in pairs(opts.servers) do
                server_opts.capabilities =
                    vim.tbl_deep_extend("force", {}, capabilities, server_opts.capabilities or {})
                lspconfig[server].setup(server_opts)
            end
        end,
    },
}

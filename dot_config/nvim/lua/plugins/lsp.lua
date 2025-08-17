Tools = {
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
    formatters = {
        "goimports",
        "prettierd",
        "stylua",
        "black",
        "shfmt",
        "yamlfmt",
        "clang-format",
        "csharpier",
    },
}

return {
    { "j-hui/fidget.nvim", event = "LspAttach", opts = {} },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPost", "BufReadPre", "BufNewFile" },
        dependencies = { "mason-org/mason.nvim" },
        config = function()
            -- v0.11 and after use vim.lsp.enable("...") instead of
            -- require'lspconfig'.….setup{}
            for server_name, server_opts in pairs(Tools.servers) do
                vim.lsp.config[server_name] = server_opts or {}
                vim.lsp.enable(server_name)
            end
        end,
    },
    {
        "mason-org/mason.nvim",
        cmd = { "Mason", "MasonInstall" },
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
        build = ":MasonUpdate",
        opts = {},
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
            "mason-org/mason-lspconfig.nvim",
        },
        cmd = {
            "MasonToolsInstall",
            "MasonToolsInstallSync",
            "MasonToolsUpdate",
            "MasonToolsUpdateSync",
            "MasonToolsClean",
        },
        config = function()
            local ensure_installed = vim.tbl_keys(Tools.servers or {})
            vim.list_extend(ensure_installed, Tools.formatters)
            require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
        end,
    },
}

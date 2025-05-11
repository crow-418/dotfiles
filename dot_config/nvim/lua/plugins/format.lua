return {
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile", "InsertLeave" },
        opts = {
            format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 500,
            },
            formatters_by_ft = {
                go = { "gofmt", "goimports" },
                javascript = { "prettierd" },
                json = { "prettierd" },
                lua = { "stylua" },
                python = { "black" },
                sh = { "shfmt" },
                terraform = { "terraform_fmt" },
                toml = { "taplo" },
                typst = { "typstfmt" },
                yaml = { "yamlfmt" },
                rust = { "rustfmt" },
            },
        },
    },
}

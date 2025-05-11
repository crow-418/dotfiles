return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        ensure_installed = {
            "bash",
            "cmake",
            "css",
            "go",
            "html",
            "javascript",
            "json",
            "lua",
            "python",
            "toml",
            "vim",
            "yaml",
        },
    },
    config = function(_, opts)
        ---@type TSConfig
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
            ensure_installed = opts.ensure_installed,
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            autopairs = { enable = true },
            sync_install = false,
        })
    end,
}

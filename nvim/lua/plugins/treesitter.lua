return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "c",
        "c_sharp",
        "bash",
        "rust",
        "python",
        "go",
      },

      highlight = {
        enable = true,
        use_languagetree = true,
      },

      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = { "html", "xml" },
      },
    })
  end,
}

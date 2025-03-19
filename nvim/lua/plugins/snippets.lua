return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = { history = true, updateevents = "TextChanged,TextChangedI" },
  config = function(_, opts)
    local luasnip = require("luasnip")

    luasnip.filetype_extend("javascriptreact", { "html" })
    luasnip.filetype_extend("typescriptreact", { "html" })

    luasnip.config.set_config(opts)

    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load({ paths = vim.g.vscode_snippets_path or "" })
  end,
}

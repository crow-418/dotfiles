return {
    "saghen/blink.pairs",
    event = "InsertEnter",
    version = "*",
    dependencies = "saghen/blink.download",
    opts = {
        highlights = {
            matchparen = {
                enabled = true,
                group = "MatchParen",
            },
        },
        debug = false,
    },
}

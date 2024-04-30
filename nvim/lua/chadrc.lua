local M = {}

M.ui = {
	theme = "solarized_osaka",
    transparency = true,

    statusline = {
        order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" },
        theme = "vscode_colored",
    },
    tabufline = {
        order = { "treeOffset", "buffers", "tabs"},
    },
}

return M

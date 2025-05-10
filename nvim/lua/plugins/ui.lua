local plugins = {
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },
    {
        "echasnovski/mini.icons",
        lazy = true,
        opts = {},
        init = function()
            package.preload["nvim-web-devicons"] = function()
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,
    },
}

local themes = {
    "blazkowolf/gruber-darker.nvim",
    "catppuccin/nvim",
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    "webhooked/kanso.nvim",
    "cocopon/iceberg.vim",
    "shaunsingh/nord.nvim",
    "sainnhe/everforest",
    "EdenEast/nightfox.nvim",
    "sainnhe/sonokai",
    "ayu-theme/ayu-vim",
    "olimorris/onedarkpro.nvim",
    "navarasu/onedark.nvim",
    "sainnhe/gruvbox-material",
    "maxmx03/solarized.nvim",
    "craftzdog/solarized-osaka.nvim",
}

for _, plugin in ipairs(themes) do
    table.insert(plugins, { plugin, lazy = true })
end

return plugins

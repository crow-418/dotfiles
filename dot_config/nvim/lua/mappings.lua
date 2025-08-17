local map = vim.keymap.set

-- Shift + K/J for moving lines up and down in visual mode
map("x", "K", ":move '<-2<CR>gv=gv")
map("x", "J", ":move '>+1<CR>gv=gv")

-- Deselect Searched Items
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Indent
map("x", "<Tab>", [[>gv]])
-- Outdent
map("x", "<S-Tab>", [[<gv]])

-- Lazy Window
map("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

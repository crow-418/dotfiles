-- Persistent Undo
vim.opt.undofile = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"
-- Keep n amount of lines visible above and below the cursor when scrolling
vim.opt.scrolloff = 10
-- Recursively search directories and sub-directories
vim.opt.path:append("**")

-- Show sidebar numbers
vim.opt.number = true
-- Sidebar number width is 4
vim.opt.numberwidth = 4
-- Highlight current line on cursor
vim.opt.cursorline = true

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Spaces to use for each step of autoindent
vim.opt.shiftwidth = 4
-- Smart indent based on context in code
vim.opt.smartindent = true
-- Number of spaces a tab is
vim.opt.tabstop = 4
-- Insert specified amount of spaces when pressing Tab
vim.opt.softtabstop = 4

-- Display empty lines at the end of the buffer with spaces instead of ~
vim.opt.fillchars = { eob = " " }
-- Ignore case in search patterns
vim.opt.ignorecase = true
-- Override ignorecase if the search contains uppercase letters
vim.opt.smartcase = true
-- Always have signcolumn visible so git signs doesn't move everything to the right
vim.opt.signcolumn = "yes"

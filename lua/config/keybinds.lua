local opt = {
	noremap = true,
	silent = true,
}

local map = vim.keymap.set

-- show files
map("n", "<leader>cd", vim.cmd.Ex)

-- write/quit
map("n", "<leader>w", ":write<CR>")
map("n", "<leader>q", ":quit<CR>")

-- jump windows using CTRL hjkl
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- clear highlights
map('n', '<Esc>', '<cmd>noh<CR>', { desc = 'Clear highlight' })
map('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear highlight' })

-- undo/redo
map('n', '<leader>re', '<cmd>redo<CR>', { desc = 'Redo' })
map('n', '<leader>u', '<cmd>undo<CR>', { desc = 'Undo' })

-- shift left/right to jump between words
map("n", "<S-Left", "b", opt)
map("n", "<S-Right>", "w", opt)

-- jump to beginning or end of line
map("n", "H", "_", opt, { desc = "Jump to first non-blank char" })
map("n", "L", "$", opt)

-- v mode: indent code
map("v", ">", ">gv", opt)
map("v", "<", "<gv", opt)

-- LSP
map("n", "<leader>d", vim.diagnostic.open_float)
map("n", "<leader>lf", vim.lsp.buf.format)
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'K', vim.lsp.buf.hover)
map('n', 'gr', vim.lsp.buf.references)
map('n', '<leader>rn', vim.lsp.buf.rename)

-- open mini picker for files
map("n", "<leader>pf", ":Pick files<CR>")
map("n", "<leader>ps", ":Pick grep_live")

-- escape terminal mode
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

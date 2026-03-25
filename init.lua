vim.g.mapleader = " "

require('config.options')
require('config.keybinds')
require('config.lazy')
require('lsp.clangd')
require('lsp.luals')
require('lsp.pyright')
require('plugins.treesitter')

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd([[colorscheme edge]])
	end,
})

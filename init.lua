require('config.options')
require('config.keybinds')
require('config.lazy')
require('lsp.clangd')
require('lsp.luals')

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd([[colorscheme PaperColor]])
	end,
})

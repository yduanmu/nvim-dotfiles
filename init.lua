require('config.options')
require('config.keybinds')
require('config.lazy')

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd([[colorscheme PaperColor]])
	end,
})

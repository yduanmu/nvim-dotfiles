require('nvim-treesitter').install({ "cpp", "python", "lua" })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "python", "lua" },
	callback = function() vim.treesitter.start() end,
})

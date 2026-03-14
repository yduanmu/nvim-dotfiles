vim.lsp.config('clangd', {
	cmd = { 'clangd', '--background-index'},
	filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
	root_markers = { '.git', 'compile_commands.json' },
	autostart = false,
})
vim.lsp.enable("clangd")

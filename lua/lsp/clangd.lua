vim.lsp.config('clangd', {
	cmd = { 'clangd', '--background-index', '--query-driver=/usr/bin/c++,/usr/bin/g++,/usr/bin/clang++'}, -- opt heavy: --clang-tidy, --completion-style=detailed
	filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
	root_markers = { '.git', 'compile_commands.json' },
	autostart = false,
})
vim.lsp.enable("clangd")

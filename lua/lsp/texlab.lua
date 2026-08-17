vim.lsp.config('texlab', {
	filetypes = { 'tex', 'bib' },
	settings = {
		texlab = {
			build = {
				executable = "latexmk",
				args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
				onSave = false,
			},
			forwardSearch = {
				executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
				args = { "-r", "-g", "%l", "%p", "%f" },
			},
		},
	},
})
vim.lsp.enable("texlab")

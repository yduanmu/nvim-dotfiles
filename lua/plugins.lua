vim.pack.add({
	'https://github.com/nvim-mini/mini.nvim',

	-- theme
	'https://github.com/NLKNguyen/papercolor-theme',
	'https://github.com/sainnhe/edge',
	'https://github.com/nvim-lualine/lualine.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons',

	-- lsp and else	
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/lervag/vimtex',
	'https://github.com/latex-lsp/texlab',
})

require('plugins.mini')
require('plugins.colorscheme')
require('plugins.treesitter')

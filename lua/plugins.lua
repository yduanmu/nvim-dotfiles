vim.pack.add({
	'https://github.com/nvim-mini/mini.nvim',
	'https://github.com/NLKNguyen/papercolor-theme',
	'https://github.com/sainnhe/edge',
	'https://github.com/nvim-lualine/lualine.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/nvim-treesitter/nvim-treesitter',
})

require('plugins.mini')
require('plugins.colorscheme')
require('plugins.treesitter')

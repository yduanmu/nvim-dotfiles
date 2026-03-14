return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require('nvim-treesitter.config').setup({
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
					disable = {"latex"}, -- to not conflict with vimtex
				},
				ensure_installed = {"cpp", "lua"},
				indent = {
					enable = true,
				},
			})
		end,
	},
}

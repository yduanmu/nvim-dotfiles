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
				},
				ensure_installed = {"cpp", "lua", "latex"},
				indent = {
					enable = true,
				},
			})
		end,
	},
}

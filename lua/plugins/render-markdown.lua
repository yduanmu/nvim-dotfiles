return {
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		ft = "markdown",
		opts = {},
		config = function()
			require('render-markdown').setup({
				completions = { lsp = { enabled = true } },
				link = {
					enabled = true,
					render_modes = false,
					image = ' ',
					email = ' ',
					hyperlink = ' ',
					highlight = 'RenderMarkdownLink',
					highlight_title = 'RenderMarkdownLinkTitle',
				},
				quote = {
					enabled = true,
					render_modes = false,
					icon = '▋',
					repeat_linebreak = false,
					highlight = {
						'RenderMarkdownQuote1',
						'RenderMarkdownQuote2',
						'RenderMarkdownQuote3',
						'RenderMarkdownQuote4',
						'RenderMarkdownQuote5',
						'RenderMarkdownQuote6',
					},
				},
			})	
		end,
	},
}

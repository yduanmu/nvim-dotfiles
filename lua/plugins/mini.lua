return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.pick").setup({
				mappings = {close = "q"}
			})
			require("mini.pairs").setup()
			require("mini.files").setup()
			vim.keymap.set("n", "<leader>e", require("mini.files").open, { desc = "Open Mini Files" })
		end,
	},
}

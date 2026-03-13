return {
	{
		-- "echasnovski/mini.nvim",
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.pick").setup()
			require("mini.pairs").setup()
			require("mini.files").setup()
			-- require("mini.icons").setup() -- mini-completion dependency
			require("mini.snippets").setup() -- mini-completion dependency
			require("mini.completion").setup()
			
			vim.keymap.set("n", "<leader>e", require("mini.files").open, { desc = "Open Mini Files" })
			vim.keymap.set("n", "<Esc>", require("mini.files").close, { desc = "Close Mini Files" })
		end,
	},
}

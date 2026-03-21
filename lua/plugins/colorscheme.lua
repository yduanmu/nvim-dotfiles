return {
	{
    	"NLKNguyen/papercolor-theme",
		"sainnhe/edge",
    	lazy = false,
    	priority = 1000,
    	config = function()
      		vim.opt.background = "light"
      		vim.cmd.colorscheme("edge")
    	end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "edge"
			-- theme = "papercolor_light",
		}	
	},
}

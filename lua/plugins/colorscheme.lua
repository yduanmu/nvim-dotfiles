return {
	{
    	"NLKNguyen/papercolor-theme",
    	-- lazy = false,
    	-- priority = 1000,
    	config = function()
      		vim.opt.background = "light"
      		vim.cmd.colorscheme("papercolor")
			-- for some reason the above doesn't work. Have to use an autocmd in init.lua
    	end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			theme = "papercolor_light",
		}	
	},
}

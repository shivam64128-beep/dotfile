return {
    {
        "catppuccin/nvim",
	config = function()
	    vim.cmd.colorschem "catppuccin"
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'catppuccin'
	}
    },
}


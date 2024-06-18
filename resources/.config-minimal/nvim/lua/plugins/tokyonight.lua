return {
	"folke/tokyonight.nvim",
	lazy = false,
	name = "tokyonight",
	priority = 1000,
	config = function()
		require("tokyonight").setup({ style = "night" }) -- storm, moon, night, day
		vim.cmd.colorscheme "tokyonight"
	end
}

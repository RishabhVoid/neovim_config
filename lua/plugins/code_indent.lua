local highlight = {
	"CursorColumn",
	"Whitespace",
}

return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = { highlight = {}, char = "" }, -- Disable highlight and characters
		whitespace = {
			highlight = {},
			remove_blankline_trail = false,
		},
		scope = { enabled = false }, -- Optionally disable scope highlighting
	},
	config = function()
		require("ibl").setup()
	end,
}

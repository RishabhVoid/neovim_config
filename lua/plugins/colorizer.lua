return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			"css",
			"javascript",
      "typescript",
			html = {
				mode = "foreground",
			},
		})
	end,
}

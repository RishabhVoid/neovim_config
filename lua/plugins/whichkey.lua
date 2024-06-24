register_events = function()
	local wk = require("which-key")

	wk.register({
		f = {
			name = "file",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			r = { "<cmd>telescope oldfiles<cr>", "open recent file", noremap = false, buffer = 0 },
			n = { "New File" },
			e = { "Edit File" },
			m = { "Format file" },
			h = { "Help preview" },
			b = { "Grep preview" },
			g = { "Grep preview" },
		},
	}, { prefix = "<leader>" })
end

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		register_events()
	end,
	opts = {
	},
}

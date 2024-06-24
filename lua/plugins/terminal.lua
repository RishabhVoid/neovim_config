return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			-- size can be a number or function which is passed the current terminal
			size = 70,
			persist_mode = true,
			persist_size = true,
			close_on_exit = true,
			direction = "float",
			open_mapping = [[<C-\>]],
			terminal_mappings = true,
			insert_mappings = true,
		})
	end,
}

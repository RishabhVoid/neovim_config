return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", {})
		vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>", {})
		require("neo-tree").setup({
			popup_border_style = "rounded",
			open_on_setup = true, -- Show NeoTree when setup is called
			auto_close = true, -- Automatically close NeoTree when opening a file
			open_on_tab = false, -- Don't open NeoTree automatically when creating a new tab
			update_cwd = true, -- Update the working directory to the current file
			view = {
				width = 80, -- Width of the NeoTree window
				auto_resize = true, -- Automatically resize NeoTree when the window size changes
				mappings = {
					custom_only = true, -- Only use custom mappings
					list = {
						{ key = { "<CR>", "o", "<2-LeftMouse>" }, cb = "<cmd>NeoTreeOpenFile<CR>" },
						{ key = { "<2-RightMouse>", "<C-]>" }, cb = "<cmd>NeoTreeOpenFile<CR>" },
						{ key = "R", cb = "<cmd>NeoTreeRefresh<CR>" },
						{ key = "a", cb = "<cmd>NeoTreeToggle<CR>" },
						{ key = "q", cb = "<cmd>NeoTreeClose<CR>" },
						{ key = "U", cb = "<cmd>lua require('neotree').update_cwd()<CR>" },
					},
				},
			},
			filters = {
				dotfiles = true, -- Show hidden files
			},
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
					hide_by_name = {
						-- '.git',
						-- '.DS_Store',
						-- 'thumbs.db',
					},
					never_show = {},
				},
			},
		})
	end,
}

return {
	"terrortylor/nvim-comment",
	config = function()
		require("nvim_comment").setup({
			line_mapping = "<leader>/",
			operator_mapping = "<leader>cl",
			comment_chunk_text_object = "ic",
		})
	end,
}

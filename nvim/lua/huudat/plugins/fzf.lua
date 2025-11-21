return {
	"ibhagwan/fzf-lua",
	cmd = "FzfLua",
	keys = {
		{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>FzfLua git_files<cr>", desc = "Git Files" },
		{ "<leader>fl", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
		{ "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help Tags" },
	},
	opts = {
		winopts = {
			height = 0.85,
			width = 0.90,
			preview = {
				layout = "horizontal",
				horizontal = "right:50%",
			},
		},
	},
}

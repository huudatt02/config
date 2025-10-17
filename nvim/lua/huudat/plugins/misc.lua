return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
	{
		"ojroques/nvim-bufdel",
		event = "VeryLazy",
		keys = {
			{ "<leader>x", "<cmd>BufDel<CR>", desc = "Close buffer" },
			{ "<leader>X", "<cmd>BufDel!<CR>", desc = "Force close buffer" },
			{ "<leader>ba", "<cmd>BufDelAll<CR>", desc = "Close all buffers" },
			{ "<leader>bo", "<cmd>BufDelOthers<CR>", desc = "Close other buffers" },
		},
		opts = {
			next = "tabs",
			quit = false,
		},
	},
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		version = "*",
		opts = {},
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},
	{
		"numToStr/Comment.nvim",
		event = "VeryLazy",
		opts = {},
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPost", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = { char = "│" },
			scope = { enabled = false },
			exclude = {
				filetypes = {
					"help",
					"dashboard",
					"neo-tree",
					"Trouble",
					"lazy",
				},
				buftypes = { "terminal", "nofile" },
			},
		},
	},
}

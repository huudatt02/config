return {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
			"TmuxNavigatorProcessList",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},

	{
		"mbbill/undotree",
		cmd = "UndotreeToggle",
		init = function()
			vim.g.undotree_WindowLayout = 4
			vim.g.undotree_SplitWidth = 40
			vim.g.undotree_SetFocusWhenToggle = true
		end,
		keys = {
			{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle UndoTree" },
		},
	},

	{
		"numToStr/Comment.nvim",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},

	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				window = {
					winblend = 0,
				},
			},
		},
	},

	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "VeryLazy",
		priority = 1000,
		opts = {
			preset = "classic",
			transparent_bg = false,
			transparent_cursorline = true,
		},
	},

	{
		"ojroques/nvim-bufdel",
		event = "VeryLazy",
		opts = {
			next = "tabs",
			quit = false,
		},
		keys = {
			{ "<leader>bd", "<cmd>BufDel<CR>", desc = "Close buffer" },
			{ "<leader>ba", "<cmd>BufDelAll<CR>", desc = "Close all buffers" },
			{ "<leader>bo", "<cmd>BufDelOthers<CR>", desc = "Close other buffers" },
		},
	},

	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPost", "BufNewFile" },
		opts = {},
	},
}

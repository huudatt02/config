return {
	"nvim-neo-tree/neo-tree.nvim",
	event = "VeryLazy",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle filesystem left<CR>", desc = "Toggle Neo-tree filesystem" },
		{ "<leader>g", "<cmd>Neotree toggle git_status left<CR>", desc = "Toggle Neo-tree git status" },
	},
	opts = {
		close_if_last_window = true,
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
				["<space>"] = "none",
				["Y"] = {
					function(state)
						local node = state.tree:get_node()
						local path = node:get_id()
						vim.fn.setreg("+", path, "c")
					end,
					desc = "Copy Path to Clipboard",
				},
				["O"] = {
					function(state)
						local Util = require("lazy.util")
						Util.open(state.tree:get_node().path, { system = true })
					end,
					desc = "Open with System Application",
				},
				["P"] = { "toggle_preview", config = { use_float = false } },
			},
		},

		filesystem = {
			bind_to_cwd = false,
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = false,
				hide_by_name = {
					".DS_Store",
					"thumbs.db",
					"node_modules",
					"__pycache__",
					".virtual_documents",
					".git",
					".python-version",
					".venv",
				},
			},
		},

		default_component_configs = {
			git_status = {
				symbols = {
					added = "󰐕",
					modified = "󰧞",
					deleted = "󰅖",
					renamed = "󰁕",
					untracked = "󰋖",
					ignored = "󰿟",
					unstaged = "󰍴",
					staged = "󰄬",
					conflict = "",
				},
			},

			diagnostics = {
				symbols = {
					hint = "󰌵",
					info = "󰋼",
					warn = "󰀦",
					error = "󰅙",
				},
			},
		},
	},
}

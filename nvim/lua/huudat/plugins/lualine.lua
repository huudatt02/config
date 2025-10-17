return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local mode = {
			"mode",
			fmt = function(str)
				if vim.fn.winwidth(0) < 80 then
					return str:sub(1, 1)
				end
				return str
			end,
		}

		local filename = {
			"filename",
			path = 1,
			fmt = function(name)
				local parts = vim.split(name, "/")
				local len = #parts
				if len <= 3 then
					return name
				else
					return table.concat({ parts[len - 2], parts[len - 1], parts[len] }, "/")
				end
			end,
		}

		local branch = { "branch", icon = "" }

		local diagnostics = {
			"diagnostics",
			symbols = { error = "󰅙 ", warn = "󰀦 ", info = "󰋼 ", hint = "󰠠 " },
			colored = true,
		}

		local diff = {
			"diff",
			symbols = { added = "󰐕", modified = "󰜥", removed = "󰅖" },
			colored = true,
		}

		return {
			options = {
				theme = "tokyonight",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = { "alpha", "neo-tree" },
			},
			sections = {
				lualine_a = { mode },
				lualine_b = { branch, diff, diagnostics },
				lualine_c = { filename },
				lualine_x = { "encoding", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { "fugitive", "neo-tree", "quickfix" },
		}
	end,
}

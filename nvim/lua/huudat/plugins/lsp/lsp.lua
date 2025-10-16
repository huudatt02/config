return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "saghen/blink.cmp" },
	opts = {
		servers = {
			lua_ls = {},
			ts_ls = {},
			gopls = {},
			html = {},
			cssls = {},
			tailwindcss = {},
			emmet_ls = {},
		},
	},
	config = function(_, opts)
		local signs = {
			[vim.diagnostic.severity.ERROR] = "󰅙",
			[vim.diagnostic.severity.WARN] = "󰀦",
			[vim.diagnostic.severity.HINT] = "󰠠",
			[vim.diagnostic.severity.INFO] = "󰋼",
		}

		vim.diagnostic.config({
			signs = {
				text = signs,
			},
			virtual_text = true,
			underline = true,
			update_in_insert = false,
		})

		for server, config in pairs(opts.servers) do
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}

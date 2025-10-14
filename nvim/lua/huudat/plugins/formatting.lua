return {
	"stevearc/conform.nvim",
	event = { "BufReadPost", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>cf",
			function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			mode = { "n", "v" },
			desc = "Format file or range",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt", "goimports", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 3000,
		},
	},
}

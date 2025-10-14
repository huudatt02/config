return {
	"williamboman/mason.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
	config = function(_, opts)
		require("mason").setup(opts)

		require("mason-lspconfig").setup({
			ensure_installed = {
				"ts_ls",
				"gopls",
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"stylua",
				"prettierd",
				"eslint_d",
				"gofumpt",
				"golangci-lint",
			},
		})
	end,
}

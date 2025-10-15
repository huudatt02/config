return {
	"williamboman/mason.nvim",
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
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup(opts)

		mason_lspconfig.setup({
			ensure_installed = {
				"ts_ls",
				"gopls",
				"html",
				"cssls",
				"tailwindcss",
				"emmet_ls",
			},
		})

		mason_tool_installer.setup({
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

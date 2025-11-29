return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "saghen/blink.cmp" },
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
                local map = vim.keymap.set
				local fzf = require("fzf-lua")
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show LSP references"
				map("n", "gr", function() fzf.lsp_references() end, opts)

				opts.desc = "Show LSP definitions"
				map("n", "gd", function() fzf.lsp_definitions() end, opts)

				opts.desc = "Go to declaration"
				map("n", "gD", function() fzf.lsp_declarations() end, opts)

				opts.desc = "Show LSP implementations"
				map("n", "gi", function() fzf.lsp_implementations() end, opts)

				opts.desc = "Show LSP type definitions"
				map("n", "gt", function() fzf.lsp_typedefs() end, opts)

                opts.desc = "Show document symbols"
                map("n", "<leader>ls", function() fzf.lsp_document_symbols() end, opts)

                opts.desc = "Show workspace symbols"
                map("n", "<leader>lS", function() fzf.lsp_workspace_symbols() end, opts)

				opts.desc = "See available code actions"
				map({ "n", "v" }, "<leader>ca", function() fzf.lsp_code_actions() end, opts)

				opts.desc = "Smart rename"
				map("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Show document diagnostics"
				map("n", "<leader>ld", function() fzf.diagnostics_document() end, opts)

				opts.desc = "Show workspace diagnostics"
				map("n", "<leader>lD", function() fzf.diagnostics_workspace() end, opts)

				opts.desc = "Show documentation for what is under cursor"
				map("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "Restart LSP"
                map("n", "<leader>rs", "<cmd>LspRestart<CR>", opts)
			end,
		})

		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅙 ",
					[vim.diagnostic.severity.WARN] = "󰀦 ",
					[vim.diagnostic.severity.HINT] = "󰠠 ",
					[vim.diagnostic.severity.INFO] = "󰋼 ",
				},
			},
			virtual_text = false,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})
	end,
}

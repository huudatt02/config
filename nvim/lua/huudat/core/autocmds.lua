vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#565f89" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#565f89" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
	end,
})

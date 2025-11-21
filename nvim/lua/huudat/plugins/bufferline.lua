return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	version = "*",
	opts = {
		options = {
			mode = "buffers",
			numbers = "none",
			close_command = "BufDel %d",

			buffer_close_icon = "󰅖",
			modified_icon = "󰧞",
			close_icon = "󰅖",
			left_trunc_marker = "󰬨",
			right_trunc_marker = "󰬪",

			color_icons = true,
			show_buffer_icons = true,
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			always_show_bufferline = false,

			separator_style = { "", "" },
			indicator = {
				icon = "▎",
				style = "icon",
			},

			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
}

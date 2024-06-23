return {
	"akinsho/bufferline.nvim",
	config = function()
		require("bufferline").setup({
			options = {
				numbers = "ordinal",
				close_command = "bdelete! %d",
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left",
					},
				},
				show_buffer_icons = true, -- Show file icons
				show_buffer_close_icons = true,
				show_close_icon = false,
				separator_style = "slant", -- Options: "slant", "thick", "thin", etc.
			},
		})
	end,
}

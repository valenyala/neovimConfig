require("nvim-web-devicons").setup{}
require("bufferline").setup{
	options = {
		numbers = "none",
		middle_mouse_command = "bdelete %d",
		buffer_close_icon = 'x',
		show_buffer_icons = false,
		separator_style = "thin"
	}
}

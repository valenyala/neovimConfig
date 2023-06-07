require("nvim-web-devicons").setup{}
require("bufferline").setup{
	options = {
		numbers = "none",
		middle_mouse_command = "bdelete %d",
		buffer_close_icon = 'x',
		separator_style = "thick",
		show_buffer_icons = true,
	}
}

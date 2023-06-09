require('telescope').setup{
	defaults = {
		layout_strategy = 'vertical',
		layout_config = {
			height = 0.8
		}
	}
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>P', builtin.find_files, {})
vim.keymap.set('n', '<space>p', builtin.git_files, {})
vim.keymap.set('n', '<space>t', builtin.buffers, {})

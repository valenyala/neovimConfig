require('nvim-tree').setup {
	renderer = {
		icons = {
			git_placement = "after"
		},
	},
	actions = {
		open_file = {
			quit_on_open = true,
		}
	}
};

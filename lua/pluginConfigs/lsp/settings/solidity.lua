return {
	default_config = {
		cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
		filetypes = { 'solidity' },
		root_dir = require("lspconfig").util.find_git_ancestor,
		single_file_support = true,
	},
}

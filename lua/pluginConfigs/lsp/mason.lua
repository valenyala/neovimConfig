local servers = {
	"lua_ls",
	"omnisharp",
	"solidity",
	"tsserver"
}

local mason = require('mason');

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	},

	keymaps = {
		toggle_package_expand = "<CR>",
		install_package = "i",
		update_package = "u",
		update_all_packages = "U",
		uninstall_package = "X"
	}
});

require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("pluginConfigs.lsp.handlers").on_attach,
		capabilities = require("pluginConfigs.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "pluginConfigs.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end

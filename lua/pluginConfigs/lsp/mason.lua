local servers = {
	"lua_ls",
	"omnisharp",
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

lspconfig["lua_ls"].setup(require("pluginConfigs.lsp.settings.lua_ls"));
lspconfig["omnisharp"].setup(require("pluginConfigs.lsp.settings.lua_ls"));

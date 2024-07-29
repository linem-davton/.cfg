return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"ansiblels",
				"bashls",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
				"eslint",
				"jsonls",
				"yamlls",
				"pyright",
				"rust_analyzer",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort",
				"black",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
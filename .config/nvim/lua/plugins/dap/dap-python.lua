return {
	"mfussenegger/nvim-dap-python",
	dependencies = { "mfussenegger/nvim-dap", "rcarriga/nvim-dap-ui" },

	config = function()
		require("dap-python").setup("~/.config/nvim/venv/bin/python3")
		require("dap-python").test_runner = "pytest"
	end,

	-- Load this plugin only when opening Python files
	condition = function()
		return vim.bo.filetype == "python"
	end,
}

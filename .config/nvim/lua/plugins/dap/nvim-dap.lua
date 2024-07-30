return {
	"mfussenegger/nvim-dap",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local dap = require("dap")
		local keymap = vim.keymap -- for conciseness
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" }, opts)
		keymap.set("n", "<Leader>dr", dap.continue, { desc = "Run debugger" }, opts)
	end,
}

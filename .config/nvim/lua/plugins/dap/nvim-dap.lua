return {
	"mfussenegger/nvim-dap",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local dap = require("dap")
		local keymap = vim.keymap -- for conciseness
		local opts = { noremap = true, silent = true }
		keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" }, opts)
		keymap.set("n", "<Leader>dr", dap.continue, { desc = "Run debugger" }, opts)

		-- Basic debugging controls with standard IDE keybindings
		keymap.set("n", "<F5>", dap.continue, { desc = "Start/continue debugging" }, opts)
		keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" }, opts)
		keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" }, opts)
		keymap.set("n", "<F12>", dap.step_out, { desc = "Step out" }, opts)
		keymap.set("n", "<Shift-F5>", dap.terminate, { desc = "Terminate debugging" }, opts)
	end,
}

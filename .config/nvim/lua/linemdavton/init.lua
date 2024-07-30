require("linemdavton.remap")
require("linemdavton.options")

-- Create an augroup for the highlight yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYank", {})

-- Create an autocmd within that group
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 1000 })
	end,
})

vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.mouse = "a" -- Enable mouse mode
opt.relativenumber = true
opt.number = true

opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }

opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

-- tabs & Indentatiom
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false -- Disable line wrap

opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line

-- theme and colors
opt.termguicolors = true -- True color support
opt.background = "dark"

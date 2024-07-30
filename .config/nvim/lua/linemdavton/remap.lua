vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>ft", vim.cmd.Ex, opts, { desc = "Open Explorer" })
keymap.set("i", "jj", "<ESC>", opts, { desc = "Exit insert mode" })
keymap.set("n", "<leader>nh", vim.cmd.nohl, opts, { desc = "Nohighlights, clear searcg highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", opts, { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", opts, { desc = "Decrement number" }) -- decrement

-- splits management
keymap.set("n", "<C-w>\\", "<C-w>v", opts, { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<C-w>-", "<C-w>s", opts, { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<C-w>=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

-- Adjust split sizes with Ctrl and arrow keys
keymap.set("n", "<C-Right>", ":vertical resize +5<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -5<CR>", opts)
keymap.set("n", "<C-Up>", ":resize +5<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -5<CR>", opts)

-- tabs management
keymap.set("n", "W|", "<cmd>tabnew<CR>", opts, { desc = "Open new tab" }) -- open new tab
keymap.set("n", "WQ", "<cmd>tabclose<CR>", opts, { desc = "Close current tab" }) -- close current tab
keymap.set("n", "WW", "<cmd>tabn<CR>", opts, { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "WP", "<cmd>tabp<CR>", opts, { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "L", ":tabnext #<CR>", opts)

-- Map keys to switch directly to specific tabs
keymap.set("n", "<Leader>1", ":tabnext 1<CR>", opts)
keymap.set("n", "<Leader>2", ":tabnext 2<CR>", opts)
keymap.set("n", "<Leader>3", ":tabnext 3<CR>", opts)
keymap.set("n", "<Leader>4", ":tabnext 4<CR>", opts)
keymap.set("n", "<Leader>5", ":tabnext 5<CR>", opts)
keymap.set("n", "<Leader>6", ":tabnext 6<CR>", opts)
keymap.set("n", "<Leader>7", ":tabnext 7<CR>", opts)
keymap.set("n", "<Leader>8", ":tabnext 8<CR>", opts)
keymap.set("n", "<Leader>9", ":tabnext 9<CR>", opts)

-- Move highlighted text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- join line without moving cursor
keymap.set("n", "J", "mzJ`z", opts)

-- Page up and down keeping cursor centered
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv") -- Same for Search
keymap.set("n", "N", "Nzzzv")

-- Global Substitue highlighted word
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Deugger setup
keymap.set("n", "<Leader>dq", function()
	require("dapui").close()
end, { desc = "Close the debugger ui" }, opts)

keymap.set("n", "<Leader>dt", function()
	require("dap-python").test_method()
end, { desc = "Run Python test method under cursor" }, opts)

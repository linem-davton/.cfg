-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.python3_host_prog = "~/.config/nvim/venv/bin/python"

require("linemdavton")
require("lazy.lazy")

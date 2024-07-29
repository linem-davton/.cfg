return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local transform_mod = require("telescope.actions.mt").transform_mod

    -- or create your custom action
    local custom_actions = transform_mod({
      open_trouble_qflist = function(prompt_bufnr)
        trouble.toggle("quickfix")
      end,
    })

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>ss", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy search files in cwd" })
    keymap.set("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy search recent files" })
    keymap.set("n", "<leader>\\", "<cmd>Telescope live_grep<cr>", { desc = "search string in cwd" })
    keymap.set("n", "<leader>sc", "<cmd>Telescope grep_string<cr>", { desc = "search string under cursor in cwd" })
    keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "search todos" })
    keymap.set('n', '<leader>sg', "<cmd>Telescope git_files<cr>", {desc = "Search git files"})
  end
}

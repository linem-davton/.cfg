return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")
    
    auto_session.setup({
      auto_restore_enabled = true,
      auto_save_enabled = true,
      auto_session_use_git_branch = true
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore workspace for cwd" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
  end,
}

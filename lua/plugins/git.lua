return {
  {
    "mbbill/undotree",
    keys = { { "<leader>fu", "<cmd>UndotreeToggle<cr>", mode = "n", desc = "File Undotree" } },
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    keys = {
      {
        "<leader>gw",
        "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
        desc = "Git Worktree list",
      },
      {
        "<leader>gW",
        "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
        desc = "Git Worktree Create",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
  },
}

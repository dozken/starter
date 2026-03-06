return {
  {
    "mbbill/undotree",
    keys = { { "<leader>fu", "<cmd>UndotreeToggle<cr>", mode = "n", desc = "File Undotree" } },
  },
  {
    "polarmutex/git-worktree.nvim",
    keys = {
      {
        "<leader>gw",
        function()
          require("telescope").extensions.git_worktree.git_worktrees()
        end,
        desc = "Git Worktree list",
      },
      {
        "<leader>gW",
        function()
          require("telescope").extensions.git_worktree.create_git_worktree()
        end,
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

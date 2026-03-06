return {
  { "christoomey/vim-tmux-navigator", keys = { "<C-h>", "<C-j>", "<C-k>", "<C-l>" } },
  {
    "laytan/cloak.nvim",
    event = "BufReadPre",
    opts = {
      cloak_character = "*",
      highlight_group = "Comment",
      try_all_patterns = true,
      cloak_telescope = true,
      patterns = {
        {
          file_pattern = ".env*",
          cloak_pattern = "=.+",
        },
      },
    },
  },
}

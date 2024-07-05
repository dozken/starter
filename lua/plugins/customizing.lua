return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = { transparent_background = true },
  },
  {
    "folke/trouble.nvim",
    opts = { use_diagnostic_signs = true },
  },
  {
    "echasnovski/mini.icons",
    opts = {
      extension = {
        templ = { glyph = "", hl = "MiniIconsOrange" },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = { position = "right" },
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
          hide_by_name = { ".git", ".DS_Store" },
        },
      },
    },
  },
}

return {
  { "catppuccin/nvim", opts = { transparent_background = true } },
  { "folke/trouble.nvim", opts = { use_diagnostic_signs = true } },
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
  {
    "nvimdev/dashboard-nvim",
    -- enabled = false,
    -- opts = {
    --   theme = "hyper",
    --   config = {
    --     week_header = {
    --       enable = true,
    --     },
    --     shortcut = {
    --       { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
    --       {
    --         icon = " ",
    --         icon_hl = "@variable",
    --         desc = "Files",
    --         group = "Label",
    --         action = "Telescope find_files",
    --         key = "f",
    --       },
    --       -- {
    --       --   desc = " Apps",
    --       --   group = "DiagnosticHint",
    --       --   action = "Telescope app",
    --       --   key = "a",
    --       -- },
    --       -- {
    --       --   desc = " dotfiles",
    --       --   group = "Number",
    --       --   action = "Telescope dotfiles",
    --       --   key = "d",
    --       -- },
    --     },
    --   },
    -- },
  },
}

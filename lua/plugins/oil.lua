return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open Oil" },
    { "<leader>-", "<cmd>:lua require('oil').toggle_float()<cr>", desc = "Open Oil in float" },
  },
  opts = {
    keymaps = {
      ["<C-h>"] = false,
      ["<C-l>"] = false,
      ["<C-k>"] = false,
      ["<C-j>"] = false,
      ["<M-h>"] = "actions.select_split",
    },
    view_options = { show_hidden = true },
  },
}

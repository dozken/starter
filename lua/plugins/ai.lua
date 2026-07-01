return {

  {
    "nickjvandyke/opencode.nvim",
    dependencies = {
      ---@module 'snacks'
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    keys = {
      { "<leader>aa", function() require("opencode").ask("@this: ", { submit = true }) end, mode = { "n", "x" }, desc = "Ask opencode" },
      { "<leader>ax", function() require("opencode").select() end, mode = { "n", "x" }, desc = "Execute opencode action" },
      { "<leader>at", function() require("opencode").toggle() end, mode = { "n", "t" }, desc = "Toggle opencode" },
      { "<leader>ao", function() return require("opencode").operator("@this ") end, mode = { "n", "x" }, desc = "Add range to opencode", expr = true },
      { "<leader>aO", function() return require("opencode").operator("@this ") .. "_" end, desc = "Add line to opencode", expr = true },
    },
    init = function()
      -- which-key group: +ai (matches LazyVim AI extras convention)
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        once = true,
        callback = function()
          local ok, wk = pcall(require, "which-key")
          if ok then
            wk.add({ "<leader>a", group = "ai", icon = " " })
          end
        end,
      })
    end,
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        server = {
          port = 14500,
          start = function()
            require("opencode.terminal").start("opencode --port 14500")
          end,
          stop = function()
            require("opencode.terminal").stop()
          end,
          toggle = function()
            require("opencode.terminal").toggle("opencode --port 14500")
          end,
        },
      }
    end,
  },
}

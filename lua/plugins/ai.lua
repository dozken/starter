-- https://github.com/yetone/avante.nvim
--   https://supermaven.com/
return {

  {
    "nickjvandyke/opencode.nvim",
    dependencies = {
      -- Recommended for `ask()` and `select()`.
      -- Required for `snacks` provider.
      ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
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

      -- Required for `opts.events.reload`.
      vim.o.autoread = true

      -- which-key group: +ai (matches LazyVim AI extras convention)
      local wk = require("which-key")
      wk.add({ "<leader>a", group = "ai", icon = " " })

      -- Keymaps: <leader>a* prefix (LazyVim AI convention)
      vim.keymap.set({ "n", "x" }, "<leader>aa", function()
        require("opencode").ask("@this: ", { submit = true })
      end, { desc = "Ask opencode…" })
      vim.keymap.set({ "n", "x" }, "<leader>ax", function()
        require("opencode").select()
      end, { desc = "Execute opencode action…" })
      vim.keymap.set({ "n", "t" }, "<leader>at", function()
        require("opencode").toggle()
      end, { desc = "Toggle opencode" })

      vim.keymap.set({ "n", "x" }, "<leader>ao", function()
        return require("opencode").operator("@this ")
      end, { desc = "Add range to opencode", expr = true })
      vim.keymap.set("n", "<leader>aO", function()
        return require("opencode").operator("@this ") .. "_"
      end, { desc = "Add line to opencode", expr = true })

      vim.keymap.set("n", "<S-C-u>", function()
        require("opencode").command("session.half.page.up")
      end, { desc = "Scroll opencode up" })
      vim.keymap.set("n", "<S-C-d>", function()
        require("opencode").command("session.half.page.down")
      end, { desc = "Scroll opencode down" })
    end,
  },
}

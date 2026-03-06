return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "templ" } },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "templ", "html-lsp", "htmx-lsp" } },
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { templ = { "templ" } } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = { filetypes = { "templ" } },
        html = { filetypes = { "html", "templ" } },
        htmx = { filetypes = { "html", "templ" } },
        tailwindcss = {
          filetypes_include = { "templ" },
          settings = { tailwindCSS = { includeLanguages = { templ = "html" } } },
        },
      },
    },
  },
}

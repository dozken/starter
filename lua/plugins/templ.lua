return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "go", "templ" } },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "gopls", "templ", "html-lsp", "htmx-lsp", "tailwindcss-language-server" } },
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { templ = { "html", "templ" } } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = { filetypes = { "templ" } },
        html = { filetypes = { "html", "templ" } },
        htmx = { filetypes = { "html", "templ" } },
        tailwindcss = {
          filetypes = { "templ", "astro", "javascript", "typescript", "react" },
          settings = { tailwindCSS = { includeLanguages = { templ = "html" } } },
        },
      },
    },
  },
}

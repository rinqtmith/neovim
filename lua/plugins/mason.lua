local M = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  opts = {
    ensure_installed = {
      "tailwindcss-language-server",
      "bash-language-server",
      "beautysh",
      "black",
      "codelldb",
      "css-lsp",
      "erb-lint",
      "eslint_d",
      "flake8",
      "html-lsp",
      "json-lsp",
      "jsonlint",
      "markdownlint",
      "prettier",
      "prisma-language-server",
      "pyright",
      "rust-analyzer",
      "shellcheck",
      "shfmt",
      "stylua",
      "typescript-language-server",
      "lua-language-server",
    },
  },
  ---@param opts MasonSettings | {ensure_installed: string[]}
  config = function(_, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    local function ensure_installed()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end
    if mr.refresh then
      mr.refresh(ensure_installed)
    else
      ensure_installed()
    end
  end,
}

return { M }

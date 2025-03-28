return {
  -- example of adding custom plugins on system
  -- {
  --   dir = "/Users/luka/Documents/personal/neovim/plugins/filesys.nvim",
  --   name = "filesys.nvim",
  --   lazy = false,
  --   --    event = "VeryLazy",     -- 🔥 Triggers after UI and Lazy boots
  --   config = function()
  --     require("filesys").setup { mode = "n", lhs = "<leader>fs" }
  --   end,
  -- },
  --
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",     -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "gopls",
        "tailwindcss-language-server",
        "typescript-language-server",
        "pyright",
        "clangd",
        "stylua",
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require "nvim-ts-autotag"
    end,
  },

  {   -- Todo comments
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {
      signs = true,
      sign_priority = 8,
    },
  },
}

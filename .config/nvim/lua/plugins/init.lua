return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

{
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "plugins.configs.lspconfig"
    end,
  },

  {
   "williamboman/mason.nvim",
   	 opts = {
   		ensure_installed = {
   			"lua-language-server",
        "stylua",
   			"html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server"
   	  },
  	},
  },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}

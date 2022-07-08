return {
   ["goolord/alpha-nvim"] = {
      disable = false,
      config = function()
         require "plugins.configs.alpha"
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      opt = true,
      setup = function()
         require("core.lazy_load").on_file_open "nvim-surround"
      end,
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.configs.null-ls").setup()
      end,
   },

   ["ThePrimeagen/refactoring.nvim"] = {
      opt = true,
      setup = function()
         require("core.lazy_load").on_file_open "nvim-surround"
      end,
      after = {
         "plenary.nvim",
         "nvim-treesitter",
      },
      config = function()
         require("custom.plugins.configs.refactoring").setup()
      end,
   },

   ["kylechui/nvim-surround"] = {
      opt = true,
      setup = function()
         require("core.lazy_load").on_file_open "nvim-surround"
      end,
      config = function()
         require("custom.plugins.configs.nvim-surround").setup()
      end,
   },
}

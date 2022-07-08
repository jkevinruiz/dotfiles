local M = {}

M.refactor = {
   v = {
      ["<leader>re"] = {
         "<Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>",
         "  Extract Function",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>rf"] = {
         "<Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>",
         "  Extract Function To File",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>rv"] = {
         "<Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>",
         "  Extract Variable",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>ri"] = {
         "<Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
         "  Inline Variable",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>rr"] = {
         ":lua require('refactoring').select_refactor()<CR>",
         "  Select Refactor",
         opts = { noremap = true, silent = true, expr = false },
      },
   },

   n = {
      ["<leader>rb"] = {
         "<Cmd>lua require('refactoring').refactor('Extract Block')<CR>",
         "  Extract Block",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>rf"] = {
         "<Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>",
         "  Extract Block To File",
         opts = { noremap = true, silent = true, expr = false },
      },
      ["<leader>ri"] = {
         "<Cmd>lua require('refactoring').refactor('Inline Variable')<CR>",
         "  Inline Variable",
         opts = { noremap = true, silent = true, expr = false },
      },
   },
}

return M

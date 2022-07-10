local present, tmux = pcall(require, "tmux")

if not present then
   return
end

local M = {}

M.setup = function()
   tmux.setup {
      copy_sync = {
         enable = true,
      },
      navigation = {
         enable_default_keybindings = true,
      },
      resize = {
         enable_default_keybindings = true,
      },
   }
end

return M

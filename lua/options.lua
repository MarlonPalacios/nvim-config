require "nvchad.options"
-- Forzar a VimTeX a olvidarse de Zathura en Windows
vim.g.vimtex_view_method = 'general'
vim.g.vimtex_view_general_viewer = [[C:\Program Files\PDF24\pdf24-Reader.exe]]
-- add yours here!
local o = vim.o
o.relativenumber = true

--xd para rapido nvim
if (vim.fn.has("wsl") == 1 or vim.fn.has("win32") == 1) and vim.fn.executable("win32yank.exe") == 1 then
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

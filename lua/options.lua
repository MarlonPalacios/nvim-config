require "nvchad.options"
-- add yours here!
local o = vim.o
o.relativenumber = true
vim.diagnostic.config({
  update_in_insert = true,
  virtual_text = { prefix = "●" },
  signs = true,
  underline = true,
  severity_sort = true,
})

vim.diagnostic.config({
  update_in_insert = true,
  virtual_text = { prefix = "●" },
  signs = true,
  underline = true,
  severity_sort = true,
})

--validation of win32yank in wsl and windows
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

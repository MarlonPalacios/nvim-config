
vim.diagnostic.config({
  update_in_insert = true,   -- Evalúa mientras escribes
  virtual_text = { 
    prefix = "●",            -- Texto flotante al final de la línea
  },
  signs = true,              -- Iconos de error en la barra izquierda
  underline = true,          -- Línea ondulada debajo del error
  severity_sort = true,
})

return {}


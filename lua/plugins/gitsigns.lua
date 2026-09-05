return {
  {
    "lewis6991/gitsigns.nvim",
    -- Esto le dice a NvChad que fusione tus opciones con las que trae por defecto
    opts = {
      current_line_blame = true, -- Activa el autor del cambio al final de la línea
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- Posición al final de la línea
        delay = 300,           -- Tiempo en milisegundos para que aparezca (0.3 segundos)
        ignore_whitespace = false,
      },
      current_line_blame_formatter = "   <author>, <author_time:%R> - <summary>", -- Formato estético
    },
  },
}


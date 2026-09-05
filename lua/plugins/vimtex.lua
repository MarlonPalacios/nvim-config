return {
  "lervag/vimtex",
  lazy = true, -- ¡OBLIGATORIO para evitar fallos de autocompilación y búsqueda inversa!
  init = function()
    -- Configura tu visor de PDF preferido (ej: 'zathura', 'okular', 'mupdf', o 'skim' en macOS)
    vim.g.vimtex_view_method = "zathura"

    -- Configuración opcional: Indica la carpeta donde se guardarán los archivos basura de compilación (.aux, .log, etc.)
    vim.g.vimtex_compiler_latexmk = {
      out_dir = "build",
    }
  end,
}


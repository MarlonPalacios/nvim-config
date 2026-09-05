return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
    {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },  
  -- Solución definitiva y moderna para Neovim 0.11+
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Traemos las capacidades y configuraciones visuales nativas de NvChad
      local nv_lsp = require("nvchad.configs.lspconfig")
      
      -- Tu lista de servidores instalados en Mason
      local servers = { "html", "cssls", "clangd" , "jdtls", "pyright"} 

      -- Configuración global para todos los servidores usando la nueva API nativa
      vim.lsp.config("*", {
        root_markers = { ".git" },
        on_attach = nv_lsp.on_attach,
        on_init = nv_lsp.on_init,
        capabilities = nv_lsp.capabilities,
      })

      -- Activamos cada servidor de forma moderna sin usar el método deprecated ".setup"
      for _, lsp in ipairs(servers) do
        vim.lsp.enable(lsp)
      end
    end,
  },

{
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true, -- Esto carga la configuración por defecto automáticamente
    event = "User FileOpened", -- Lo carga cuando abres un archivo
  },

{
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"
    local conf = require "nvchad.configs.cmp" -- Importa la base de NvChad

    conf.mapping = cmp.mapping.preset.insert {
      -- 1. Forzar la aparición del menú de autocompletado
      ["<C-Space>"] = cmp.mapping.complete(),

      -- 2. Navegar con las Flechas del teclado
      ["<Down>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
      ["<Up>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },

      -- 3. Navegar al estilo Vim (Ctrl + j / Ctrl + k) mientras escribes
      ["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
      ["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },

      -- Confirmar la selección con Enter o Tab
      ["<CR>"] = cmp.mapping.confirm { select = true },
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
    }

    return conf
  end,
},
  {
    "lervag/vimtex",
    lazy = false, -- Muy importante: VimTeX no debe cargarse de forma perezosa
    init = function()
      -- Fuerza a VimTeX a usar SumatraPDF en lugar de Zathura
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_view_general_viewer = [[C:\Program Files\PDF24\pdf24-Launcher.exe]]
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

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

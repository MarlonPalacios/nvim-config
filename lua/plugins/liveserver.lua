-- lua/plugins/liveserver.lua
return {
  "barrett-ruth/live-server.nvim",
  build = "npm i -g live-server",
  cmd = { "LiveServerStart", "LiveServerStop" },
  config = function()
    -- Eliminamos el .setup() viejo y lo dejamos vacío porque ya no se usa así
  end,
}

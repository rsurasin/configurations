  -- Setup Lua Language Server
local sumneko_root_path
local sumneko_binary

local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
  sumneko_root_path = vim.fn.getenv 'HOME'..'/.local/share/nvim/lsp_servers/sumneko_lua/extension/server'
  sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
  sumneko_root_path = vim.fn.getenv 'HOME'..'/.local/share/nvim/lsp_servers/sumneko_lua/extension/server'
  sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
else
  print("Unsupported system for sumneko")
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      --   Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

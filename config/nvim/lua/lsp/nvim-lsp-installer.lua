local lsp_installer = require("nvim-lsp-installer")
local opts = require("lsp/opts")

-- Provide settings first!
lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- Automatically install servers on Neovim load (if not installed prior)
local servers = {"rust_analyzer", "pyright", "tsserver", "sumneko_lua", "cssls", "html", "dockerls", "yamlls"}

for _, name in pairs(servers) do
    local server_is_found, server = lsp_installer.get_server(name)
    if server_is_found then
        if not server:is_installed() then
          print("Installing " .. name)
          server:install()
        end
    end
end

lsp_installer.on_server_ready(function(server)
-- default ops - on_attach lspconfig keymaps
local default_opts = opts
-- Override default LSP server options
-- lua language server (sumneko_lua)
local server_opts = {
    ["sumneko_lua"] = function()
        require'lsp.lua-ls'
    end,
    ["html"] = function()
        require'lsp.html-ls'
    end,
}
-- Use the server's custom settings, if they exist, otherwise default to the default options
local server_options = server_opts[server.name] and server_opts[server.name]() or default_opts
server:setup(server_options)
end)

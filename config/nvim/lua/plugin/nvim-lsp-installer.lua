local lsp_installer = require("nvim-lsp-installer")

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

local lsp_installer_servers = require'nvim-lsp-installer.servers'
local servers = {"rust_analyzer", "pyright", "tsserver", "sumneko_lua", "cssls", "html", "dockerls", "yamlls"}

for i = 1, #servers do
    local server_available, requested_server = lsp_installer_servers.get_server(servers[i])
    if server_available then
        requested_server:on_ready(function ()
            local opts = {}
            requested_server:setup(opts)
        end)
        if not requested_server:is_installed() then
            -- Queue the server to be installed
            requested_server:install()
        end
    end
end


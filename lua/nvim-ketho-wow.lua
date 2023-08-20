-- main module file
local module = require("nvim-ketho-wow.module")

---@class Config
---@field enabled_completions Array<string> Your config option
local config = {
    enabled_completions = {
        "API",
        "Optional",
    },
}

---@class KethoWoW
local M = {}

---@type Config
M.config = config

---@param args Config?
M.setup = function(args)
    M.config = vim.tbl_deep_extend("force", M.config, args or {})
    local lsputil = require("lspconfig.util")
    local hook = lsputil.add_hook_after
    lsputil.on_setup = hook(lsputil.on_setup, function(config)
        if config.name == "lua_ls" then
            config.on_new_config = hook(config.on_new_config, M.on_new_config)
        end
    end)
end

M.get_completion_paths = function()
    local enabledPaths = {}
    local paths = module.completion_paths()

    for _, name in pairs(M.config.enabled_completions) do
        enabledPaths[name] = paths[name]
    end

    return enabledPaths
end

M.on_new_config = function(config)
    config.settings.Lua.workspace = config.settings.Lua.workspace or {}
    local library = config.settings.Lua.workspace.library or {}
    config.settings.Lua.workspace.library = library

    for _, value in pairs(M.get_completion_paths()) do
        table.insert(config.settings.Lua.workspace.library, value)
    end
end

return M

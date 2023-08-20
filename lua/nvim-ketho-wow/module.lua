---@class KethoWoWInternal
local M = {}

---@class KethoCompletions
---@param table<string, string>

-- FIXME: This likely isn't the best way to get the plugin path...
local pluginPath = debug.getinfo(1).source:match("@?(.*/)")

---@return KethoCompletions
M.completion_paths = function()
    return {
        API = pluginPath .. "../../vscode-wow-api/EmmyLua/API",
        Optional = pluginPath .. "../../vscode-wow-api/EmmyLua/Optional",
    }
end

return M

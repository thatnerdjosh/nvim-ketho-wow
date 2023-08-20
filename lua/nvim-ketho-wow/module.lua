---@class KethoWoWInternal
local M = {}

---@class KethoCompletions
---@param Array<string>

---@return KethoCompletions
local pluginPath = debug.getinfo(1).source:match("@?(.*/)")

M.completion_paths = function()
    return {
        pluginPath .. "../../vscode-wow-api/EmmyLua/API",
        pluginPath .. "../../vscode-wow-api/EmmyLua/Optional",
    }
end

return M

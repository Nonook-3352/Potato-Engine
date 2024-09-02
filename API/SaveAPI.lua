local ObjectsAPI = require("API.ObjectAPI")
local FileAPI = require("API.FileAPI")

local SaveAPI = {
    GameData = {},

    SaveSystem = {
        
        new = function (id, path)
            return ObjectsAPI.save.new(id, path)
        end,

        load = function (self, save)
            local data = FileAPI.readjson(save.path)
            self.GameData[save.id] = data
        end,

        save = function (self, save)
            FileAPI.writeJson(self.GameData[save.id], save.path)
        end
    }
}

return SaveAPI
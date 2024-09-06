local ObjectsAPI = require("API.ObjectAPI")
local FileAPI = require("API.FileAPI")

local SaveAPI = {
    

    SaveSystem = {
        GameData = {},

        load = function (self, save)
            local data = FileAPI.readjson(save.path)

            self.GameData[save.id] = data

            return true
        end,

        save = function (self, save)
            FileAPI.writeJson(self.GameData[save.id], save.path)
        end
    }
}

return SaveAPI
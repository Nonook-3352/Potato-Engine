local ObjectsAPI = require("API.ObjectAPI")

local textureAPI ={
    Textures = {},

    add = function(self, name, texture)
        if self.Textures[name] == nil then
            self.Textures[name] = texture
        else
            print(name, "already exist")
        end
    end,

    override = function (self, name, texture)
        self.Textures[name] = texture
    end


}


return textureAPI
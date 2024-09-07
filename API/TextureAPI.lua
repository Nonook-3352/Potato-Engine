
local Class = require "libs.hump.class"

local textureAPI ={
    Textures = {},

    load = function (self, path)
        if path == nil then
            path = "textures/"
        end
        local files = love.filesystem.getDirectoryItems(path)
        for k, file in ipairs(files) do
            --print(k .. ". " .. file) --outputs something like "1. main.lua"
            local image = love.graphics.newImage(path.."/"..file)
            local file_name = file:gsub(".png", "")
            local potato = {object=require("API.ObjectAPI")}
            self.Textures[file_name] = potato.object.texture(path.."/"..file, image:getWidth(), image:getHeight())
        end
    end,

    get = function (self, id)
        return self.Textures[id]
    end,

    -- Depredcated DO NOT USE
    add = function(self, name, texture)
        if self.Textures[name] == nil then
            self.Textures[name] = texture
        else
            print(name .. " already exist")
        end
    end,

    --Need a refactor
    override = function (self, name, texture)
        self.Textures[name] = texture
    end

    
}


return textureAPI
local Class = require "libs.hump.class"
local potato = {texture=require("API.TextureAPI")}

Objects = {
    
    texture = Class{
        init = function (self, path, w, h)
            self.path = path
            self.image = love.graphics.newImage(path)
            self.w = w
            self.h = h
        end
    },

    sprite = Class{
        init = function (self, texture, x, y, scale, r)
            if type(texture) == "string" then
                self.texture = potato.texture:get(texture)
            else
                self.texture = texture
            end
            self.x = x
            self.y = y
            self.scale = scale
            if r == nil then
                self.r = 0
            else
                self.r = r
            end
        end
    },

    text = Class{
        init = function (self, text, color, x, y)
            self.text= text
            self.color = color
            self.x = x
            self.y = y
        end
    },

    save = Class{
        init = function (self, path, id)
            self.path= path
            self.id = id
        end
    },

    rectangle = Class{
        init = function (self, w ,h, x, y)
            self.w = w
            self.h = h
            self.x = x
            self.y = y
        end
    },

    circle = Class{
        init = function (self, x, y ,r)
            self.x = x
            self.y = y
            self.r = r
        end
    },

    icon = Class{
        init = function (self, texture)
            if type(texture) == "string" then 
                self.icon = love.image.newImageData(potato.texture:get(texture).path)
            else
                self.icon = love.image.newImageData(texture.path)
            end
        end
    }

}




return Objects
local Class = require "libs.hump.class"

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
            self.texture = texture
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
            self.icon = love.image.newImageData(texture.path)
        end
    }

}




return Objects
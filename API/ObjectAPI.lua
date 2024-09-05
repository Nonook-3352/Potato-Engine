local Class = require "libs.hump.class"

Objects = {
    
    texture = Class{
        init = function (self, path, w, h)
            self.path = path
            self.w = w
            self.h = h
        end
    },

    sprite = Class{
        init = function (self, texture, x, y, scale)
            self.texture = texture
            self.x = x
            self.y = y
            self.scale = scale
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
    }

}




return Objects
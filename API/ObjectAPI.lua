Objects = {
    texture = {
        w = 0,
        h = 0,
        image = "",
        image_path = "",
        image_data = "",
        scale = {sx=1, sy=1},

        new = function (image_path, w, h, scale)
            local self = {}
            self.image = love.graphics.newImage(image_path)
            self.image_data = love.image.newImageData(image_path)
            self.image_path = image_path
            self.w = w
            self.h = h
            self.sw = w * scale.sx
            self.sh = h * scale.sy
            self.scale = {sx=scale.sx, sy=scale.sy}
            return self
        end,
    },


    text = {
        color = {r=1, g=1, b=1},
        text = "",

        new = function (color, text)
            local self = {}
            self.color = {r=color[1], g=color[2], b=color[3]}
            self.text = text
            return self
        end,
    },


    sprite = {
        texture = nil,
        x = 0,
        y = 0,

        new = function (texture, x, y)
            local self = {}
            self.texture = texture
            self.x = x
            self.y = y
            return self
        end
    },


    rectbutton = {
        texture = nil,
        w = 0,
        h = 0,
        x = 0,
        y = 0,

        new = function (sprite)
            local self = {}
            self.texture = sprite
            self.w = sprite.texture.sw
            self.h = sprite.texture.sh
            self.x = sprite.x
            self.y = sprite.y
            return self
        end
    },

    circlebutton = {
        texture = nil,
        r = 0,
        x = 0,
        y = 0,

        new = function (sprite)
            local self = {}
            self.texture = sprite
            self.r = sprite.texture.sw / 2
            self.x = sprite.x + sprite.texture.sw/2
            self.y = sprite.y + sprite.texture.sh/2
            return self
        end
    },

    save = {
        id = "",
        path = "",

        new = function (id, path)
            local self = {}
            self.id = id
            self.path = ""
        end
    }
}




return Objects
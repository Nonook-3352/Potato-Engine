Objects = {
    texture = {
        w = 0,
        h = 0,
        image = "",
        scale = {sx=1, sy=1},

        new = function (image_path, w, h, scale)
            local self = {}
            self.image = image_path
            self.w = w
            self.h = h
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


    button = {
        texture = nil,
        w = 0,
        h = 0,
        x = 0,
        y = 0,

        new = function (texture, w, h, x, y)
            local self = {}
            self.texture = texture
            self.w = w
            self.h = h
            self.x = x
            self.y = y
            return self
        end
    }
}




return Objects
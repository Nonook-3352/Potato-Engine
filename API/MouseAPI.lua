local MouseAPI = {
    cursor = {
        x = 0,
        y = 0,

        givepos = function(self, x, y)
            self.x = x
            self.y = y
        end,
        insideRectangle = function(self, rectangle)
            return self.x >= rectangle.x 
            and self.x < rectangle.x + rectangle.w
            and self.y >= rectangle.y
            and self.y < rectangle.y + rectangle.h
        end,

        insideCircle = function(self, circle)
            local distanceSquared = (self.x - circle.x) * (self.x - circle.y) + (self.y - circle.y) * (self.y - circle.y)
            return distanceSquared <= circle.r * circle.r
        end
    }
}

return MouseAPI
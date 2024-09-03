local DrawAPI = {
    sprite = function (sprite)
        love.graphics.draw(sprite.texture.image, sprite.x, sprite.y, 0, sprite.texture.scale.sx, sprite.texture.scale.sy)
    end

}

return DrawAPI
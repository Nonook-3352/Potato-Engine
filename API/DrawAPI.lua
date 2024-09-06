local DrawAPI = {
    drawSprite = function (sprite)
        love.graphics.draw(sprite.texture.image, sprite.x, sprite.y, sprite.r, sprite.texture.scale[0], sprite.texture.scale[1])
    end

}

return DrawAPI
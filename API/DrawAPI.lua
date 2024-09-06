local DrawAPI = {
    drawSprite = function (sprite)
        if sprite.scale[1] == nil then
            print("Scale must be an array with an index (table)")
        else
            love.graphics.draw(sprite.texture.image, sprite.x, sprite.y, sprite.r, sprite.scale[1], sprite.scale[2])
        end
    end,

    drawText = function (text)
        if text.color[1] == nil then
            print("text color must be an array with index (table)")
        else
        love.graphics.print({text.color, text.text}, text.x, text.y)
        end
    end

}

return DrawAPI
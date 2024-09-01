local screenapi = {
    centerx = function (objwidth, globalwidth)
        local width
        if globalwidth == nil then
            width = love.graphics.getWidth()
        else
            width = globalwidth
        end

        if type(objwidth) == "number" then
            
            return (width - objwidth) / 2
        elseif objwidth == nil then
            return width / 2
        end
        
    end,

    centery = function (objheight, globalheight)
        local height
        if globalheight == nil then
            height = love.graphics.getHeight()
        else
            height = globalheight
        end

        if type(objheight) == "number" then
            
            return (height - objheight) / 2
        elseif objheight == nil then
            return height / 2
        end
        
    end
}

return screenapi
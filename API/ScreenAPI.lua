local screenapi = {
    centerx = function (objwidth, globalwidth)
        local glowidth
        if globalwidth == nil then
            glowidth = love.graphics.getWidth()
        else
            glowidth = globalwidth
        end

        if type(objwidth) == "number" then
            
            return (glowidth - objwidth) / 2
        elseif objwidth == nil then
            return glowidth / 2
        end
        
    end,

    centery = function (objheight, globalheight)
        local gloheight
        if globalheight == nil then
            gloheight = love.graphics.getHeight()
        else
            gloheight = globalheight
        end

        if type(objheight) == "number" then
            
            return (gloheight - objheight) / 2
        elseif objheight == nil then
            return gloheight / 2
        end
        
    end
}

return screenapi
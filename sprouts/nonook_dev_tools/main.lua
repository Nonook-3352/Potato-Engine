local potato = require("API.init")



local font = love.graphics.newFont(15)

local function update()
    fps = love.timer.getFPS()
    
    
end

local function draw()

    --love.graphics.setFont(font)
    love.graphics.print({{0,0,0},fps}, 10, 10)

end

potato.sprout:update("dev", update)
potato.sprout:draw("dev", draw)
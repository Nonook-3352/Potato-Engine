local potato = require("API.init")
local textures = potato.texture.Textures

local tests = {
    texture = function ()
        local one = textures.icon.w ~= nil
        local two = textures.icon.h ~= nil
        local three = textures.icon.path ~= nil
        local four = textures.icon.image ~= nil
        local result = potato.test.runChecks(one, two, three, four)
        print(assert(result))

    end

}

return tests
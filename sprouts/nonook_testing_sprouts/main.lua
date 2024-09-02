local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")
local SproutAPI = require("API.SproutAPI")
local potato = require("API.init")




TextureAPI:override("icon", ObjectAPI.texture.new("custom_icon.png", 512, 512, {sx=0.4, sy=0.4}))
TextureAPI:add("custom_texture", ObjectAPI.texture.new("custom_texture.png", 128, 128, {sx=1, sy=1}))


print(TextureAPI.Textures.custom_texture.image)

local function begin()
    print("my sprout has loaded !")
end

local function update()
    print("im ran every frame !")
end

local ending = function ()
    print("goodbye")
end



potato.sprout:begin(begin)
potato.sprout:update(update)
potato.sprout:ending(ending)
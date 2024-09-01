local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")


print("hello from my sprout !")
local test = 1

TextureAPI:override("icon", ObjectAPI.texture.new("custom_icon.png", 512, 512, {sx=0.3, sy=0.3}))
TextureAPI:add("custom_texture", ObjectAPI.texture.new("custom_texture.png", 128, 128, {sx=1, sy=1}))


print(TextureAPI.Textures.custom_texture.image)

local ending = function ()
    print("goodbye")
end


return {
    ending = ending
}
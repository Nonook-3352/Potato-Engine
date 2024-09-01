local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")
local SproutAPI = require("API.SproutAPI")


print("hello from my sprout !")
local test = 1

TextureAPI:override("icon", ObjectAPI.texture.new("custom_icon.png", 512, 512, {sx=0.3, sy=0.3}))
TextureAPI:add("custom_texture", ObjectAPI.texture.new("custom_texture.png", 128, 128, {sx=1, sy=1}))


print(TextureAPI.Textures.custom_texture.image)

local function testing()
    print("hello from my sprout")
end

local ending = function ()
    print("goodbye")
end


SproutAPI.functions:add("testing", testing)

return {
    ending = ending
}
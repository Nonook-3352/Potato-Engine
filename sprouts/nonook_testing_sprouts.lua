local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")

print("hello from my sprout !")

TextureAPI:override("icon", ObjectAPI.texture.new("custom_icon.png", 512, 512, {sx=0.3, sy=0.3}))
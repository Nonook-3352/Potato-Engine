local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")


local icon = ObjectAPI.texture.new("icon.png", 512, 512, {sx=0.3, sy=0.3})
local title = ObjectAPI.text.new({0,0,0}, "Minecraft")
local button_sprite = ObjectAPI.sprite.new(icon, 70, 100)
local simple_button = ObjectAPI.button.new(icon, 512, 512, 200, 500)

print(icon.w)
print(icon.h)
print(icon.image)
print(icon.scale.sx)
print(icon.scale.sy)

print(title.color.r)
print(title.text)

print(button_sprite.texture.image)
print(button_sprite.x)
print(button_sprite.y)

print(simple_button.texture.image)
print(simple_button.w)
print(simple_button.x)

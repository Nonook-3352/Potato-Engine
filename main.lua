local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")
local Textures = TextureAPI.Textures
local SproutAPI = require("API.SproutAPI")
local MouseAPI = require("API.MouseAPI")

SproutAPI.functions.load(SproutAPI.functions.Functions)

local sprouts = require("sprouts.init")

TextureAPI:add("icon", ObjectAPI.texture.new("icon.png", 512, 512, {sx=0.3, sy=0.3}))
TextureAPI:add("title", ObjectAPI.text.new({0,0,0}, "Minecraft"))
TextureAPI:add("button_sprite", ObjectAPI.sprite.new(Textures.icon, 70, 100))
TextureAPI:add("simple_button", ObjectAPI.rectbutton.new(Textures.icon, 512, 512, 200, 500))
TextureAPI:add("circle_button", ObjectAPI.circlebutton.new(Textures.icon, 100, 200, 200))

local function testing()
    print("hi")
end

testing()

MouseAPI.mouse:givepos(200, 500)

print(Textures.icon.w)
print(Textures.icon.h)
print(Textures.icon.image)
print(Textures.icon.scale.sx)
print(Textures.icon.scale.sy)

print(Textures.title.color.r)
print(Textures.title.text)

print(Textures.button_sprite.texture.image)
print(Textures.button_sprite.x)
print(Textures.button_sprite.y)

print(Textures.simple_button.texture.image)
print(Textures.simple_button.w)
print(Textures.simple_button.x)

print(MouseAPI.mouse:insideRectangle(Textures.simple_button))
MouseAPI.mouse:givepos(200, 250)
print(MouseAPI.mouse:insideCircle(Textures.circle_button))

SproutAPI.ending(sprouts)
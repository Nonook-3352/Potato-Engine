local ObjectAPI = require("API.ObjectAPI")
local TextureAPI = require("API.TextureAPI")
local Textures = TextureAPI.Textures
local SproutAPI = require("API.SproutAPI")
local MouseAPI = require("API.MouseAPI")
local SaveAPI = require("API.SaveAPI")
local LoadTexure = dofile("scripts/LoadTexture.lua")

SproutAPI.functions.load(SproutAPI.functions.Functions)

local sprouts = require("sprouts.init")



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

SproutAPI.update(sprouts)

SproutAPI.ending(sprouts)
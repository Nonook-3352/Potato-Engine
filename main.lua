local potato = require("API.init")
local Textures = potato.texture.Textures
local LoadTexture = dofile("scripts/LoadTexture.lua")






local sprouts = require("sprouts.init")



local function testing()
    print("hi")
end

testing()

potato.mouse.cursor:givepos(200, 500)

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

print(potato.mouse.cursor:insideRectangle(Textures.simple_button))
potato.mouse.cursor:givepos(200, 250)
print(potato.mouse.cursor:insideCircle(Textures.circle_button))

potato.sprout:beginLoad()

potato.sprout:updateLoad()

potato.sprout:endingLoad()
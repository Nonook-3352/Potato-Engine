local SproutAPI = {

    ending = function (sprouts)
        for key, value in pairs(sprouts) do
                if type(value.ending) == "function" then
                    value.ending()
                end
        end

    end

}

return SproutAPI
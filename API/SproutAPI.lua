local SproutAPI = {

    ending = function (sprouts)
        for key, value in pairs(sprouts) do
            for key2, value2 in pairs(value) do
                if type(value2.ending) == "function" then
                    value2.ending()
                end
            end
        end

    end

}

return SproutAPI
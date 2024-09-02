local SproutAPI = {
    
    ending = function (sprouts)
        for key, value in pairs(sprouts) do
            for key2, value2 in pairs(value) do
                if type(value2.ending) == "function" then
                    value2.ending()
                end
            end
        end

    end,

    update = function (sprouts)
        for key, value in pairs(sprouts) do
            for key2, value2 in pairs(value) do
                if type(value2.update) == "function" then
                    value2.update()
                end
            end
        end

    end,
    
    functions = {
        Functions = {},

        add = function (self, name, func)
            self.Functions[name] = func
        end,

        load = function (functions)
            for key, value in pairs(functions) do
                value()
            end
        end
    }

}

return SproutAPI
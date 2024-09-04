local SproutAPI = {
    Begins = {},
    Endings = {},
    Updates = {},
    Draws = {},

    begin = function (self, func)
        table.insert(self.Begins, func)
    end,

    beginLoad = function (self)
        for index, value in ipairs(self.Begins) do
            value()
        end
    end,

    ending = function (self, func)
        table.insert(self.Endings, func)
    end,

    endingLoad = function (self)
        for index, value in ipairs(self.Endings) do
            value()
        end

    end,

    update = function (self, id, func)
        --table.insert(self.Updates, func)
        self.Updates[id] = func
        print("loaded " .. id)
    end,

    updateLoad = function (self)
        --print(self.Updates[1])
        for key, value in pairs(self.Updates) do

            return {[key]= value()}

        end
    end,

    draw = function (self, id, func)
        --table.insert(self.Updates, func)
        self.Draws[id] = func
        print("loaded " .. id)
    end,

    drawLoad = function (self)
        --print(self.Updates[1])
        for key, value in pairs(self.Draws) do
            value()
            print("a")

        end
    end,
    
    functions = {
        
    }

}

return SproutAPI
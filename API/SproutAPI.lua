local SproutAPI = {
    Begins = {},
    Endings = {},
    Updates = {},

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

    update = function (self, func)
        table.insert(self.Endings, func)
    end,

    updateLoad = function (self)
        for index, value in ipairs(self.Updates) do
            value()
        end
    end,
    
    functions = {
        
    }

}

return SproutAPI
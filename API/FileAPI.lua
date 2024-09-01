local json = require("libs.json.lua.json")

local FileAPI = {

    readjson = function(path)
        local file = io.open(path, "rb") -- r read mode and b binary mode
        if not file then return nil end
        local content = file:read "*a" -- *a or *all reads the whole file
        file:close()
        return json.decode(content)
    end,
    
    writeJson = function(t, path)
        local file = io.open(path, "w")
    
        if file then
            local contents = json.encode(t)
            file:write( contents )
            io.close( file )
            return true
        else
            return false
        end
    end

}

return FileAPI
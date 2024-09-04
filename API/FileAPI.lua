local json = require("libs.json_lua.json")
local logger = require("libs.lua-logger.logger")
local filelogger = logger()

local FileAPI = {

    readjson = function(path)
        filelogger:info("Reading ".. path)
        local file = io.open(path, "rb") -- r read mode and b binary mode
        if not file then return nil end
        local content = file:read "*a" -- *a or *all reads the whole file
        file:close()
        filelogger:info("Finished reading ".. path)
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
local log = require("libs.ent")

local ScriptAPI = {
    funcs = {
        loads = {},
        quits = {}
    },

    passLoad = function (self, id,  func)
        self.funcs.loads[id] = func
        log.info("Loaded "..id.." load func")
    end,

    passQuit = function (self, id, func)
        self.funcs.quits[id] = func
        log.info("Loaded"..id.."quit func")
    end
}

return ScriptAPI
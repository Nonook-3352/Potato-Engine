local testAPI = {
    runChecks = function (...)
        local checks = {...}
        for index, value in ipairs(checks) do
            local result = value
            if not result then
                print("Check "..index.." failed")
                break
            else
                return true
            end
        end
        
    end

}

return testAPI
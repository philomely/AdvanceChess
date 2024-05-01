require("base/constants")
local GrandGame = class('GrandGame')
local People = require('people.people')
function GrandGame:initialize()
    self.people = People:new()
end

function GrandGame:tick()
    print("GrandGame tick")
    self.people:tick()
    return 0
end

return GrandGame
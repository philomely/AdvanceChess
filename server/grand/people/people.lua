require("../base/constants")
require("../item/water")
local People = class('People')
local Water = class('Water')
function People:initialize()
    self.population = 0
    self.happiness = 0
    self.wellbeing = 0
    self.needs = {
        [NEED_AIR] = 10,
        [NEED_WATER] = 20
    }
    self.action = {

    }
    self.asset = {
        Water:new()
    }
end

function People:tick()
    --prioritize need and take action

end

return People
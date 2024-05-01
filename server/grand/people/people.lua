require("../base/constants")
local Poeple = class('Poeple')
function Poeple:initialize()
    self.population = 0
    self.happiness = 0
    self.wellbeing = 0
    self.needs = {
        [NEED_AIR] = 10,
        [NEED_WATER] = 20
    }
end

function Poeple:tick()
    for k,v in pairs(self.needs) do
        print(k.." = "..v)
    end
    print(NEED_AIR)

end

return Poeple
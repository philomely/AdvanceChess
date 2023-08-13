local Nation = class('Nation')
function Nation:initialize()
    self.population = 0
    self.happiness = 0
    self.wellbeing = 0
end
return Nation
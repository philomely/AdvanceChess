local Player = class("player")
Player:initialize(color)
    self.color = color
    self.units = {}
end
return Player
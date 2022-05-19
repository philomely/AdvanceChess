local Player = class("player")
function Player:initialize(color)
    self.color = color
    self.units = {}
end

function Player:setGame(game)
    self.game = game
end

function Player:moveUnit(unit, x, y)

end
return Player
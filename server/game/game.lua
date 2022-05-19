local Map = require('map')
local Tank = require('unit.tank')
local Player = require('player')
local Game = class('game')
function Game:initialize(players)
    self.map = Map:new(2,2)
    self.tank = Tank:new()
    self.players = players
    for i, p in ipairs (players) do
        p:setGame(self)
    end
end
return Game
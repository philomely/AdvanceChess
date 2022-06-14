local Map = require('map')
local Tank = require('unit.tank')
local Player = require('player')
local Game = class('game')
function Game:initialize(players, map)
    self.map = map
    self.tank = Tank:new()
    self.players = players
    for i, p in ipairs (players) do
        p:setGame(self)
    end
end
return Game
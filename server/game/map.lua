local MapTile = require('maptile')
local Map = class('Map')
function Map:initialize(w, h)
    self.w = w
    self.h = h
    self.tiles = {}
    for i=1,w do
      self.tiles[i] = {}
      for j=1,h do
        self.tiles[i][j] = MapTile:new(1)
      end
    end
end

function Map:tostring()
    w = self.w
    for i=1,w do
        for j=1,self.h do
          print(self.tiles[i][j].type)
        end
    end
end

return Map
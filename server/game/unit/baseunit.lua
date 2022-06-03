local BaseUnit = class("BaseUnit")

function BaseUnit:initialize()
    self.x = 0
    self.y = 0
end

function BaseUnit:getName()
    return "baseunit"
end

function BaseUnit:moveToPos(int x, int y)
    self.x = x
    self.y = y
end

return BaseUnit
local Line = require('line')
local LoanableMarket = class('LoanableMarket')
function LoanableMarket:initialize()
    self.supply = Line:new(1,1)
    self.demand = Line:new(1,1)
    self.quantity = 0
    self.interestRate = 0
end
return LoanableMarket
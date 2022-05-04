local Tank = class(..., require("unit.baseunit"))
function Tank:getInfo()
    return "this is tank"
end
return Tank
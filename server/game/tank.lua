local tank = class(..., require("baseunit"))
function tank:getInfo()
    return "this is tank"
end
return tank
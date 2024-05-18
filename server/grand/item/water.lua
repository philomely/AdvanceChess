local Water = class(..., require("item.baseitem"))
function Water:getNeeds()
    return {
        [NEED_WATER] = 20
    }
end
return Water
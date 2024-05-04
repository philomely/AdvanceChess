require("../base/constants")
ACT_GATHER = {
    requirement = {

    }
    [NEED_FOOD] = 100
}
ACT_DRINK = {
    requirement = {
        conditions = {
            1 = {
                map = {
                    [MAP_WATER] = {
                        op = -1
                        val = 100
                    }
                }
            }
        }
        relation = {
            1
        }
    },
    result = {
        need = {
            [NEED_WATER] = 100
        }
    }
}
ACT_SLEEP = {
    [NEED_SLEEP] = 100
}


local skynet = require "skynet"
require "skynet.manager"	-- import skynet.register

local command = {}

function command.Test(key)
	
end

function command.SET(key, value)

end

skynet.start(function()
	skynet.error("game started lets go!!!")
	skynet.dispatch("lua", function(session, address, cmd, ...)
		cmd = cmd:upper()

		local f = command[cmd]
		if f then
			skynet.ret(skynet.pack(f(...)))
		else
			error(string.format("Unknown command %s", tostring(cmd)))
		end
	end)
	skynet.register "Game"
end)

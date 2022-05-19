local skynet = require "skynet"
require "skynet.manager"	-- import skynet.register
require "GameRequire"
local Game = require('game')
local Player = require('player')
local command = {}

function command.Test(key)
	
end

function command.SET(key, value)

end

skynet.start(function()
	-- local players = {}
	local p1 = Player:new(0)
	local p2 = Player:new(1)
	local players = {p1, p2}

	local game = Game:new(players)
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
	skynet.register "game_room"
end)

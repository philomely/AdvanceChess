local skynet = require "skynet"
local sprotoloader = require "sprotoloader"
require "GameRequire"
local Game = require('grandgame')

local max_client = 64

local game = Game:new()


skynet.start(function()
	skynet.error("Server start")
	skynet.uniqueservice("protoloader")
	if not skynet.getenv "daemon" then
		local console = skynet.newservice("console")
	end
	skynet.newservice("debug_console",8000)
	skynet.newservice("simpledb")
	skynet.newservice("grandgameroom")
	local watchdog = skynet.newservice("watchdog")
	skynet.call(watchdog, "lua", "start", {
		port = 8888,
		maxclient = max_client,
		nodelay = true,
	})
	skynet.error("Watchdog listen on", 8888)
	skynet.error("enter mainloop")
	mainloop()

	skynet.exit()
end)

function mainloop()
	local fps = 1
	local intervel = 1/fps

	while true do
		local time = game:tick()
		local sleepTime = (intervel - time)*100
		if sleepTime>0 then
			print(sleepTime)
			skynet.sleep(sleepTime)
		end
	end
end
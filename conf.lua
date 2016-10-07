--[[	CONFIGURATION FILE	]]
conf = {}


--	EDIT THIS SECTION AT YOUR WILL	--
conf.client = "client.lua"		--defines what file will be invoked when the client is called
conf.server = "srh.lua"			--defines what file will be invoked when the server is called
conf.proto = "tcp"				--preferencial protocol do be used
conf.sockMax = 100				--the max number of sockets that may be opened at the same time
conf.sockCautionTime = 2		--if a socket spent more than this time without being used, be cautious


--DO NOT MESS ANYTHING HERE!
if(string.lower(conf.proto) == "tcp") then
	conf.proto = lsok.proto.tcp
elseif(string.lower(conf.proto) == "udp") then
	conf.proto = lsok.proto.udp
else
	error("the configure file had not recognezed the protocol \"" .. conf.proto .. "\"")
end

function conf.getClient()
	return conf.client
end

function conf.getServer()
	return conf.server
end

function conf.getProto()
	return conf.proto
end


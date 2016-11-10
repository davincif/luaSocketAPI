--[[	CONFIGURATION FILE	]]
conf = {}


--	EDIT THIS SECTION AT YOUR WILL	--
conf.client = "client.lua"		--defines what file will be invoked when the client is called
conf.server = "srh.lua"			--defines what file will be invoked when the server is called
conf.dns = "drh.lua"			--defines what file will be invoked when the dns is called
conf.qs = "qsrh.lua"			--defines what file will be invoked when the queue server is called
conf.proto = "tcp"				--preferencial protocol do be used
conf.sockMax = 100				--the max number of sockets that may be opened at the same time
conf.sockCautionTime = 2		--if a socket spent more than this time without being used, be cautious
conf.dnsProto = "udp"			--protocol used to communicate with the DNS
conf.dnsIP = "127.0.0.1"		--the IP of the DNS server
conf.dnsPort = 6001				--the port of the DNS server
conf.dnsNotFound = "not found"	--the msg received when the requested service is not registered at the dns
conf.dnsOk = "ok"				--the msg received when the requested service at the dns was performed successfully
conf.SPE = "SPE"				-- SPE (Server Parameter Error) in case the client call a function in the server with worng parameters, this will be returned


--DO NOT MESS ANYTHING HERE!
if(string.lower(conf.proto) == "tcp") then
	conf.proto = lsok.proto.tcp
elseif(string.lower(conf.proto) == "udp") then
	conf.proto = lsok.proto.udp
else
	error("the configure file had not recognezed the protocol \"" .. conf.proto .. "\"")
end
if(string.lower(conf.dnsProto) == "tcp") then
	conf.dnsProto = lsok.proto.tcp
elseif(string.lower(conf.dnsProto) == "udp") then
	conf.dnsProto = lsok.proto.udp
else
	error("the configure file had not recognezed the protocol \"" .. conf.proto .. "\"")
end

function conf.getClient()
	return conf.client
end

function conf.getServer()
	return conf.server
end

function conf.getDNS()
	return conf.dns
end

function conf.getQS()
	return conf.qs
end

function conf.getProto()
	return conf.proto
end


local ScriptId = "AKfycbyVvljbcFIVg-NJugZ-iEhlw6rtiNOPXmdNEdO6TsXuASW1PYgHEB3K9Mo7ZkWpD1s-yQ"
local Url = "https://script.google.com/macros/s/" .. ScriptId .. "/exec"
local HttpService = game:GetService("HttpService")

local Module = {}

function Module:SendEmail(Email, Subject, Message)
	local Success,ErrorStatement  = pcall(function()
		Result = HttpService:GetAsync(Url .. "?q="..game.HttpService:JSONEncode({Email, Subject, Message}))
	end)
	if Success then
	    return Result
	else
		return ErrorStatement
	end
end

return Module

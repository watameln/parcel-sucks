local original_require = require
require = function(...)
	print("require", ...)
	local args = {...}

	if args[1] == 9428572121 then
		print("Attempt to require Parcel whitelist")
		return {
			Whitelist = function(hubId: string, productId: string, targetUserId: number?)
				print("Whitelist" ,hubId, productId, targetUserId)
				return true
			end,
			GetAsync = function(hubId: string, productId: string, targetUserId: string, callback: void) --all it do is call whitelist
				print("GetAsync",hubId, productId, targetUserId, callback)
			end,
			ResolveCurrentOwnerId = function()
				print("ResolveCurrentOwnerId")
				return -1
			end,
		}
	elseif typeof(args[1]) == "number" then
		warn("Unknown require", args[1])
	end

	return original_require(...)
end

--obfuscated script bellow lol

local module = {}

-- // watameln
--// https://github.com/watameln/parcel-sucks

function module:Whitelist(hubId: string, productId: string, targetUserId: number?)
	print("Whitelist" ,"HubId:", hubId,"productId:", productId,"targetUserId:", targetUserId)
	return true
end

function module:GetAsync(hubId: string, productId: string, targetUserId: string, callback: void) --all it do is call whitelist
  print("GetAsync" ,"HubId:", hubId,"productId:", productId,"targetUserId:", targetUserId, "callback", callback)
end

function module:ResolveCurrentOwnerId()
  print("ResolveCurrentOwnerId")
  return -1
end


return module

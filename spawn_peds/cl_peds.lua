local policeloadout = {
	{['i'] = 1, ['weapon'] = "WEAPON_TEARGAS"},
	{['i'] = 2, ['weapon'] = "WEAPON_COMBATPISTOL"},
	{['i'] = 3, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 4, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
	{['i'] = 5, ['weapon'] = "WEAPON_CARBINERIFLE"},
	{['i'] = 6, ['weapon'] = "WEAPON_NIGHTSTICK"},
	{['i'] = 6, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

local sheriffloadout = {
	{['i'] = 7, ['weapon'] = "WEAPON_TEARGAS"},
	{['i'] = 8, ['weapon'] = "WEAPON_COMBATPISTOL"},
	{['i'] = 9, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 10, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
	{['i'] = 11, ['weapon'] = "WEAPON_CARBINERIFLE"},
	{['i'] = 12, ['weapon'] = "WEAPON_NIGHTSTICK"},
	{['i'] = 13, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

local highwayloadout = {
	{['i'] = 14, ['weapon'] = "WEAPON_TEARGAS"},
	{['i'] = 15, ['weapon'] = "WEAPON_COMBATPISTOL"},
	{['i'] = 16, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 17, ['weapon'] = "WEAPON_PUMPSHOTGUN"},
	{['i'] = 18, ['weapon'] = "WEAPON_CARBINERIFLE"},
	{['i'] = 19, ['weapon'] = "WEAPON_NIGHTSTICK"},
	{['i'] = 20, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

local fireloadout = {
	{['i'] = 21, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 22, ['weapon'] = "WEAPON_FLARE"},
	{['i'] = 23, ['weapon'] = "WEAPON_FIREEXTINGUISHER"},
	{['i'] = 24, ['weapon'] = "WEAPON_PETROLCAN"},
	{['i'] = 25, ['weapon'] = "WEAPON_CROWBAR"},
	{['i'] = 26, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

local medicloadout = {
	{['i'] = 27, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 28, ['weapon'] = "WEAPON_FLARE"},
	{['i'] = 29, ['weapon'] = "WEAPON_FLASHLIGHT"},
}

local Swatloadout = {
	{['i'] = 30, ['weapon'] = "WEAPON_TEARGAS"},
	{['i'] = 31, ['weapon'] = "WEAPON_COMBATPISTOL"},
	{['i'] = 32, ['weapon'] = "WEAPON_STUNGUN"},
	{['i'] = 33, ['weapon'] = "WEAPON_SMOKEGRENADE"},
	{['i'] = 34, ['weapon'] = "WEAPON_CARBINERIFLE"},
	{['i'] = 35, ['weapon'] = "WEAPON_NIGHTSTICK"},
	{['i'] = 36, ['weapon'] = "WEAPON_FLASHLIGHT"},
}
--bcso
RegisterNetEvent("bcsoloadout")
AddEventHandler("bcsoloadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("bcso")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(sheriffloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)
--swat
RegisterNetEvent("swatloadout")
AddEventHandler("swatloadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("swat")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(Swatloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)
--medic
RegisterNetEvent("medicloadout")
AddEventHandler("medicloadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("medic")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(medicloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)
---lsfd
RegisterNetEvent("lsfdloadout")
AddEventHandler("lsfdloadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("lsfd")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(fireloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)
---sahp
RegisterNetEvent("sahploadout")
AddEventHandler("sahploadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("highway")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(highwayloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)
---lspd
RegisterNetEvent("lspdloadout")
AddEventHandler("lspdloadout", function()
 RemoveAllPedWeapons(GetPlayerPed(-1))
 local model = GetHashKey("lspd")
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(), model)
    SetModelAsNoLongerNeeded(model)
    chatPrint( "Loadout Given." )

local playerPed = GetPlayerPed(-1)
	for k,v in ipairs(policeloadout) do
		Citizen.Trace("Weapon: "..v.i.." "..v.weapon.." Given to ".. playerPed)
	    GiveWeaponToPed(playerPed, GetHashKey(v.weapon), 9999, true, true)
     	
	end
end)

---String Split
function chatPrint( msg )
	TriggerEvent( 'chatMessage', "SYSTEM", { 0, 0, 0 }, msg )
end 

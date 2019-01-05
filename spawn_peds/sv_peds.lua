
---lspd
AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/lspd" then
	TriggerClientEvent("lspdloadout", source)
    CancelEvent()
    end
end)
---bcso
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/bcso" then
    TriggerClientEvent("bcsoloadout", source)
    CancelEvent()
    end
end)
---sahp
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/sahp" then
    TriggerClientEvent("sahploadout", source)
    CancelEvent()
    end
end)
---lsfd
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/lsfd" then
    TriggerClientEvent("lsfdloadout", source)
    CancelEvent()
    end
end)
---medic
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/medic" then
    TriggerClientEvent("medicloadout", source)
    CancelEvent()
    end
end)
---swat
AddEventHandler('chatMessage', function(source, name, msg)
    sm = stringsplit(msg, " ");
    if sm[1] == "/swat" then
    TriggerClientEvent("swatloadout", source)
    CancelEvent()
    end
end)


---string split
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
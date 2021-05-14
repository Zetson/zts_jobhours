local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","zts_jobhours")

vRPShours = {}
Tunnel.bindInterface("zts_jobhours",vRPShoursvRPShours)
Proxy.addInterface("zts_jobhours",vRPShours)
vRPChours = Tunnel.getInterface("zts_jobhours","zts_jobhours")


function vRPShours.verificaOrele(hours,job)
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local ore = vRP.getUserHoursPlayed({user_id})

    if ore >= hours then
        vRP.addUserGroup({user_id,job})
        vRPclient.notify(player,{"~b~[[AMP]~g~Te-ai angajat la "..job})
    else
        vRPclient.notify(player,{"~b~[AMP]~r~Nu ai "..hours.." ore jucate pe server"})
    end
end

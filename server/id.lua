RegisterNetEvent('ids:idNoty')
AddEventHandler('ids:idNoty', function(nearPlayers)
    local src = source
    if nearPlayers ~=nil then
        for k, v in pairs(nearPlayers) do
            if v.playerId ~= src then
                TriggerClientEvent('ids:Notify', v.playerId, src)
            end
        end
    else
    end
end)


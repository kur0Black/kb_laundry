Framework = {}

CreateThread(function()
    if GetResourceState('qb-core') == 'started' then
        Framework.name = 'QBCore'
        Framework.Core = exports['qb-core']:GetCoreObject()
        print('\x1b[32mFramework [QB-Core] Detectada.\x1b[0m')

    elseif GetResourceState('qbx-core') == 'started' then
        Framework.name = 'qbox'
        Framework.Core = exports['qbx-core']:GetCoreObject()
        print('\x1b[32mFramework [QBX] Detectada.\x1b[0m')
    else
        print('[ERRO] Nenhum framework detectado!')
        return
    end
    -- Locate Target Script
    if GetResourceState('ox_target') == 'started' then
        print('\x1b[32mOX Target Detectado.\x1b[0m')

    elseif GetResourceState('qb-target') == 'started' then
        print('\x1b[32mOX Target Detectado.\x1b[0m')
    end
    
end)

-- Wrapper para pegar o player
function Framework.GetPlayer(src)
    if Framework.name == 'QBCore' then
        return Framework.Core.Functions.GetPlayer(src)
    elseif Framework.name == 'qbox' then
        return Framework.Core:GetPlayer(src)
    end
end

-- Wrapper para pegar citizenid
function Framework.GetCitizenId(player)
    if Framework.name == 'QBCore' then
        return player.PlayerData.citizenid
    elseif Framework.name == 'qbox' then
        return player.citizenid
    end
end

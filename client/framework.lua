Framework = {}

CreateThread(function()
    if GetResourceState('qb-core') == 'started' then
        Framework.name = 'qbcore'
        Framework.Core = exports['qb-core']:GetCoreObject()
    elseif GetResourceState('qbx-core') == 'started' then
        Framework.name = 'qbox'
        Framework.Core = exports['qbx-core']:GetCoreObject()
    end
end)

-- Pega os dados completos do player
function Framework.GetPlayerData()
    if Framework.name == 'qbcore' then
        return Framework.Core.Functions.GetPlayerData()
    elseif Framework.name == 'qbox' then
        return Framework.Core:GetPlayerData()
    end
end

-- Pega o job do player
function Framework.GetJob()
    local data = Framework.GetPlayerData()
    return data and data.job
end

-- Pega o citizenid
function Framework.GetCitizenId()
    local data = Framework.GetPlayerData()
    if not data then return nil end

    if Framework.name == 'qbcore' then
        return data.citizenid
    elseif Framework.name == 'qbox' then
        return data.citizenid
    end
end

-- Verifica se o player está logado
function Framework.IsLoggedIn()
    local data = Framework.GetPlayerData()
    if not data then return false end

    if Framework.name == 'qbcore' then
        return data.citizenid ~= nil
    elseif Framework.name == 'qbox' then
        return data.citizenid ~= nil
    end
end

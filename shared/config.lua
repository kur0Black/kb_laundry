Config = {}

Config.Debug = true -- Prints and Errors

Config.GlobalCooldown = 1  -- Hours

Config.laundrySeller = false -- NPC Sell the propertie



Config.Properties = {
    {
        name = "Loja 1",
        location = vec3(1159.1844482422, -315.37142944336, 69.004547119141), -- Property vector3
        price = 10000, -- Propertie price
        LaundryMaxBalance = 15000,
        InitialPercentage = 10, -- Inicial balance equal in 10% of the price
    },
    {
        name = "Loja 2",
        location = vec3(1164.66, -315.94, 69.21), -- Property vector3
        price = 20000, -- Propertie price
        LaundryMaxBalance = 15000,
        InitialPercentage = 10, -- Inicial balance equal in 10% of the price
    },
    {
        name = "Loja 3",
        location = vec3(1164.72, -319.19, 69.21), -- Property vector3
        price = 30000, -- Propertie price
        LaundryMaxBalance = 15000,
        InitialPercentage = 10, -- Inicial balance equal in 10% of the price
    },
}

Config.Dispatch = 'ps-dispatch'
Config.DispatchJobs = {'police','ambulance'}


Config.Missions = {
    ["civilian"] ={
        -- WIP
    },
    ["civ-hardcore"] ={
        -- WIP
    },
    ["ilegal"] ={
        -- WIP
    },
    ["ilegal-hardcore"] ={
        --WIP
    },
}
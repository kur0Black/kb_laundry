Config = {}

Config.Debug = true -- Prints and Errors

Config.GlobalCooldown = 1  -- Hours

Config.DrawMarker = false -- Use drawmarker

Config.laundrySeller = false -- NPC Sell the propertie



Config.Properties = {
    {
        name = "Loja 1",
        location = vector3(0,0,0), -- Property vector3
        price = 30000, -- Propertie price
        LaundryMaxBalance = 15000,
        InitialPercentage = 10, -- Inicial balance equal in 10% of the price


    }
}

Config.Dispatch = 'ps-dispatch'
Config.DispatchJobs = {'police','ambulance'}


Config.Missions = {
    ["civilian"] ={

    },
    ["civ-hardcore"] ={
        
    },
    ["ilegal"] ={
        
    },
    ["ilegal-hardcore"] ={
        
    },
}
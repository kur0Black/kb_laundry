local laundries ={}

-- FUNCOES
local function BuyBusiness()
    local success, valor = lib.callback.await('lavanderia:lavarItens', false, {
    { item = "goldbar", amount = 2 },
    { item = "phone", amount = 1 }
    }, "loja-central")
    print(success)
    if success then
        print("Você lavou R$" .. valor .. " em itens.")
        exports.qbx_core:Notify("Você lavou $" .. valor .. " em itens.", 'success', 5000)
    else
        print("Erro ao lavar: " .. valor)
    end
end

local function CreateTarget(vec3,name)
    --
end
exports.ox_target:addSphereZone({
    coords = Config.Properties[2].location,
    radius = 0.3, -- define o raio da zona
    name = Config.Properties[2].name,
    debug = Config.Debug,
    drawSprite = true,
    options = {
        {
            label = 'Acessar Estabelecimento',
            icon = 'fas fa-building',
            distance = 1.0, -- distância máxima para ver/interagir
            onSelect = function(data)
                local property = Config.Properties[1]
                -- lógica ao interagir com a zona
                print('Interagiu com: ' .. property.name)
            end
        }
    }
})

print(Config.Properties[1].name)
print(json.encode(Config.Properties[1].price))
print(Config.Properties[1].location) -- vec3

local function Teste()
    print("teste funcionou no client")
    exports.qbx_core:Notify('Voce recebeu o saldo da lavagem.', 'success', 5000)
end



-- COMANDOS REGISTRADOS PARA TESTE

RegisterCommand("comprar", function ()
    BuyBusiness()
end, false )

RegisterCommand("lavar", function ()
    Teste()
end, false )
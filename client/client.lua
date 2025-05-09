local laundries ={}

-- FUNCOES
local function BuyBusiness()
    local success, valor = lib.callback.await('lavanderia:lavarItens', false, {
    { item = "goldbar", amount = 2 },
    { item = "phone", amount = 1 }
    }, "loja-central")

    if success then
        print("Você lavou R$" .. valor .. " em itens.")
        exports.qbx_core:Notify("Você lavou $" .. valor .. " em itens.", 'success', 5000)
    else
        print("Erro ao lavar: " .. valor)
    end

end


local function Teste()
    print("teste funcionou no client")
    exports.qbx_core:Notify('Voce recebeu o saldo da lavagem.', 'success', 5000)
end



-- COMANDOS REGISTRADOS PARA TESTE

RegisterCommand("comprar", function ()
    BuyBusiness()
end,false)

RegisterCommand("lavar", function ()
    Teste()
end,false)
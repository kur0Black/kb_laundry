local laundries ={}


local function BuyBusiness()
    
end



local function Teste()
    print("teste funcionou no client")
    exports.qbx_core:Notify('Voce recebeu o saldo da lavagem.', 'success', 5000)
end


RegisterCommand("comprar", function ()
    BuyBusiness()
end)

RegisterCommand("lavar", function ()
    Teste()
end)
local laundries ={}






local function Teste()
    print("teste funcionou no client")
    exports.qbx_core:Notify('Voce recebeu o saldo da lavagem.', 'success', 5000)
end




RegisterCommand("lavar", function ()
    Teste()
end)
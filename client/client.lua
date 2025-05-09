


local function Teste()
    print("teste funcionou no client")
end




RegisterCommand("lavar", function ()
    Teste()
end)
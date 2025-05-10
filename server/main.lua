lib.callback.register('lavanderia:lavarItens', function(source, items, shop_id)
    local source = source
    local total = 0

    -- Verifica e soma o valor total dos itens
    for _, data in pairs(items) do
        local item = data.item
        local amount = data.amount

        if not Config.Itemlist[item] then
            return false, "Item inválido: " .. item
        end

        local hasItem = exports.ox_inventory:GetItemCount(source, item)
        if hasItem < amount then
            return false, "Você não possui " .. amount .. "x " .. item
        end
        print(Config.Itemlist[item])
        total = total + (Config.Itemlist[item] * amount)
        print(total)
    end

    if total <= 0 then
        return false, "Nenhum valor válido para lavar."
    end

    -- Remove os itens do inventário
    for _, data in pairs(items) do
        exports.ox_inventory:RemoveItem(source, data.item, data.amount)
    end

    local player = exports.qbx_core:GetPlayer(source)

    if not player then return false, "Player inválido." end
    local citizenid = player.citizenid
    
    local cooldown = os.time() + (Config.Cooldown * 3600)

    -- Atualiza ou cria lavanderia
    local existing = MySQL.query.await('SELECT * FROM laundries WHERE owner_id = ? AND shop_id = ?', {
        citizenid, shop_id
    })

    if existing[1] then
        local novaLiberacao = math.max(cooldown, existing[1].liberacao_em)
        MySQL.update.await([[
            UPDATE laundries
            SET saldo_pendente = saldo_pendente + ?, liberacao_em = ?
            WHERE owner_id = ? AND shop_id = ?
        ]], {
            total, novaLiberacao, citizenid, shop_id
        })
    else
        MySQL.insert.await([[
            INSERT INTO laundries (owner_id, shop_id, saldo_pendente, liberacao_em)
            VALUES (?, ?, ?, ?)
        ]], {
            citizenid, shop_id, total, cooldown
        })
    end

    return true, total
end)

local tablecreate = MySQL.query.await([[
    CREATE TABLE IF NOT EXISTS laundries (
        id INT AUTO_INCREMENT PRIMARY KEY,
        owner_id VARCHAR(50) NOT NULL UNIQUE,
        shop_id VARCHAR(50) NOT NULL UNIQUE,
        saldo_pendente INT DEFAULT 0,
        saldo_liberado INT DEFAULT 0,
        liberacao_em BIGINT DEFAULT 0,
        atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );
]])

if tablecreate then
    print("Tabela 'laundries' verificada/criada com sucesso.")
end



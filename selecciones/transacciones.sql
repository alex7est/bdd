SELECT * FROM transacciones WHERE tipo = 'D';

SELECT * FROM transacciones WHERE monto BETWEEN MONEY(200) AND MONEY(2000);

SELECT codigo, monto, tipo, fecha FROM transacciones WHERE fecha IS NOT NULL;

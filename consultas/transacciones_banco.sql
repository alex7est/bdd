SELECT * FROM transacciones
WHERE tipo = 'C' AND numero_cuenta BETWEEN '22001' AND '22004';

SELECT * FROM transacciones AS t, banco AS b 
WHERE t.codigo = b.codigo_transaccion AND b.codigo_banco = 1;

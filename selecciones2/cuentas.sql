SELECT numero_cuenta, saldo FROM cuentas WHERE saldo > MONEY(100) AND saldo < MONEY(1000);
SELECT * FROM cuentas WHERE fecha_creacion BETWEEN '2023-03.09' AND '2024-03.09';
SELECT * FROM cuentas WHERE saldo = MONEY(0) OR cedula_propietario LIKE '%2';

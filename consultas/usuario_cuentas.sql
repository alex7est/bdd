SELECT c.numero_cuenta, u.nombre FROM cuentas AS c, usuarios AS u WHERE c.cedula_propietario = u.cedula
AND c.saldo BETWEEN MONEY(100) AND MONEY(1000);

SELECT * FROM cuentas AS c, usuarios AS u WHERE c.cedula_propietario = u.cedula
AND c.fecha_creacion BETWEEN '2022-09-21' AND '2023-09-21';

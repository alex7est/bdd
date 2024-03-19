SELECT p.cantidad_ahorrada, pr.monto, pr.garante FROM persona AS p, prestamo AS pr
WHERE p.cedula = pr.cedula AND pr.monto BETWEEN MONEY(100) AND MONEY(1000);

SELECT * FROM persona
WHERE cedula = (SELECT cedula FROM persona WHERE nombre = 'Sean');

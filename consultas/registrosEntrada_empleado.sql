SELECT r.cedula_empleado, r.fecha, e.nombre FROM registros_entrada AS r, empleado AS e 
WHERE r.codigo_empleado = e.codigo_empleado AND (r.fecha BETWEEN '2023-08-01' AND '2023-08-31')
    OR (r.cedula_empleado LIKE '17%' AND r.hora BETWEEN '08:00:00' AND '12:00:00')
    OR (r.fecha BETWEEN '2023-10-06' AND '2023-10-20' AND r.cedula_empleado LIKE '08%' AND r.hora BETWEEN '09:00:00' AND '13:00:00');

SELECT * FROM empleado
WHERE codigo_empleado = (SELECT codigo_empleado FROM registros_entrada WHERE cedula_empleado = '2201');


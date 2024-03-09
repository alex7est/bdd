SELECT * FROM registros_entrada WHERE fecha LIKE '%-09-%' OR cedula_empleado LIKE '17%';
SELECT * FROM registros_entrada WHERE fecha LIKE '%-08-%' AND cedula_empleado LIKE '17%' AND hora BETWEEN '08:00:00' AND '12:00:00';
SELECT * FROM registros_entrada WHERE (fecha LIKE '%-08-%' AND cedula_empleado LIKE '17%' AND hora BETWEEN '08:00:00' AND '12:00:00') OR (fecha LIKE '%-09-%' AND cedula_empleado LIKE '08%' AND hora BETWEEN '09:00:00' AND '13:00:00');

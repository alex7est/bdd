SELECT cedula_empleado, fecha, hora FROM registros_entrada;

SELECT * FROM registros_entrada WHERE hora BETWEEN '07:00:00' AND '14:00:00';

SELECT * FROM registros_entrada WHERE hora > '08:00:00';

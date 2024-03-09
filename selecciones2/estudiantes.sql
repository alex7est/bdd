SELECT nombre, apellido FROM estudiantes WHERE nombre LIKE 'M%' OR apellido LIKE '%Z';
SELECT nombre FROM estudiantes WHERE cedula LIKE '18%32%';
SELECT nombre, apellido FROM estudiantes WHERE cedula LIKE '%06' OR cedula LIKE '17%';

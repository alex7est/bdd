SELECT p.codigo, e.nombre, e.apellido FROM estudiantes AS e, profesores AS p
WHERE e.apellido LIKE '%n%';

SELECT e.* FROM estudiantes AS e, profesores AS p
WHERE e.codigo_profesor = p.codigo AND p.nombre = 'Francisco';

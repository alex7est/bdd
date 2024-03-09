SELECT * FROM videojuegos WHERE nombre LIKE '%C%' OR valoracion = 7;
SELECT * FROM videojuegos WHERE codigo BETWEEN 3 AND 7 OR valoracion = 7;
SELECT * FROM videojuegos WHERE (descripcion LIKE '%guerra%' AND valoracion > 7 AND nombre LIKE 'C%') OR (valoracion > 8 AND nombre LIKE 'D%');

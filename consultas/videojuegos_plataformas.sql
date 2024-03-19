SELECT v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma FROM videojuegos AS v, plataformas AS p 
WHERE v.codigo = p.codigo_videojuego AND ((v.descripcion LIKE '%Guerra%' AND v.valoracion > 7) OR v.nombre LIKE 'C%') 
OR (v.valoracion > 8 AND v.nombre LIKE 'D%');

SELECT * FROM plataformas
WHERE codigo_videojuego = (SELECT codigo FROM videojuegos WHERE nombre = 'God of war');

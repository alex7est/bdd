SELECT * FROM productos WHERE stock = 10 AND precio < 10;
SELECT nombre, stock FROM productos WHERE nombre LIKE '%m%' OR descripcion LIKE '% %';
SELECT nombre FROM productos WHERE descripcion IS NULL OR stock = 0;

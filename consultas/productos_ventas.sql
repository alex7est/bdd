SELECT p.nombre, p.stock, v.cantidad FROM productos AS p, ventas AS v
WHERE nombre LIKE '%m%' OR descripcion = '';

SELECT p.nombre, p.stock FROM productos AS p, ventas AS v 
WHERE p.codigo = v.codigo_producto AND v.cantidad = 5;

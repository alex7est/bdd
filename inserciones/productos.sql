-- Inserts con todos los campos
INSERT INTO productos (codigo, nombre, descripcion, precio, stock) VALUES
(1, 'PlayStation 5', 'Consola de videojuegos de última generación de Sony', 499.99, 100),
(2, 'Nintendo Switch', 'Consola de videojuegos híbrida de Nintendo', 299.99, 50),
(3, 'Xbox Series X', 'Consola de videojuegos de alta potencia de Microsoft', 499.99, 75),
(4, 'Samsung Galaxy S21', 'Teléfono inteligente de gama alta de Samsung', 999.99, 120),
(5, 'Apple MacBook Pro', 'Laptop potente y versátil de Apple', 1499.99, 200);

-- Inserts solo con campos obligatorios
INSERT INTO productos (codigo, nombre, precio, stock) VALUES
(6, 'Altavoces Bluetooth', 25.50, 80),
(7, 'Auriculares Inalámbricos', 18.75, 60),
(8, 'Ratón Gaming', 22.99, 90);

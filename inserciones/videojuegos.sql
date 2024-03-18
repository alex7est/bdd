-- Inserts con todos los campos
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(1, 'Zelda: Breath of the Wild', 'Acción-aventura de Nintendo.', 5),
(2, 'The Witcher 3', 'Juego de rol de CD Projekt RED.', 5),
(3, 'Red Dead Redemption 2', 'Western de Rockstar Games.', 5),
(4, 'Cyberpunk 2077', 'RPG de CD Projekt.', 4),
(5, 'Battlefield 2042', 'Juego de Guerra y accion.', 4);

-- Inserts solo con campos obligatorios
INSERT INTO videojuegos (codigo, nombre, valoracion) VALUES
(6, 'Super Mario Odyssey', 5),
(7, 'GTA V', 4),
(8, 'FIFA 22', 4),
(9, 'DOOM', 4),
(10, 'God of war', 5);

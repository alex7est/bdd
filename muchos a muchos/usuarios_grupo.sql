--Creacion de tablas--

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    fecha_nacimiento DATE
);

CREATE TABLE grupo (
    id INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    descripcion VARCHAR(75),
    fecha_creacion DATE
);

CREATE TABLE usuario_grupo (
    us_id INT NOT NULL,
    gr_id INT NOT NULL,
    FOREIGN KEY (us_id) REFERENCES usuarios(id),
    FOREIGN KEY (gr_id) REFERENCES grupo(id),
    PRIMARY KEY (us_id, gr_id)
);


--Querys--

--Consulta
SELECT usuarios.nombre AS nombre_usuario, grupo.nombre AS nombre_grupo FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id AND grupo.id = usuario_grupo.gr_id;

--Subconsulta
SELECT nombre FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 1);


--Funcion de agregacion
SELECT grupo.nombre AS nombre_grupo, COUNT(usuario_grupo.us_id) AS cantidad_usuarios FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id GROUP BY grupo.nombre;


-- Consulta 2
SELECT usuarios.nombre AS nombre_usuario, grupo.nombre AS nombre_grupo FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id AND grupo.id = usuario_grupo.gr_id AND grupo.nombre LIKE '%intensivo%';

-- Subconsulta 2
SELECT nombre FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 2);

-- Función de agregación 2
SELECT grupo.nombre AS nombre_grupo, MAX(usuario_grupo.us_id) AS max_us_id, MIN(usuario_grupo.us_id) AS min_us_id FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id GROUP BY grupo.nombre;


-- Consulta 3
SELECT usuarios.nombre AS nombre_usuario, grupo.fecha_creacion FROM usuarios, usuario_grupo, grupo
WHERE usuarios.id = usuario_grupo.us_id AND grupo.id = usuario_grupo.gr_id AND grupo.fecha_creacion BETWEEN '2020-03-08' AND '2022-03-08';

-- Subconsulta 3
SELECT nombre FROM usuarios
WHERE id IN (SELECT us_id FROM usuario_grupo WHERE gr_id = 3);

-- Función de agregación 3
SELECT grupo.descripcion AS descripcion_grupo, COUNT(usuario_grupo.us_id) AS cantidad_usuarios FROM grupo, usuario_grupo
WHERE grupo.id = usuario_grupo.gr_id AND grupo.descripcion LIKE '%matutino%' GROUP BY grupo.descripcion;

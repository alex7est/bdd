--Creacion de tablas--

CREATE TABLE ciudad (
    id INT PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL
);

CREATE TABLE municipio (
    id INT PRIMARY KEY,
    nombre VARCHAR(45),
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(id)
);

CREATE TABLE proyecto (
    id INT PRIMARY KEY,
    proyecto VARCHAR(50) NOT NULL,
    monto MONEY NOT NULL,
    fecha_inicio DATE,
    fecha_entrega DATE
);

CREATE TABLE proyecto_municipio (
	proyecto_id INT NOT NULL,
    municipio_id INT NOT NULL,
    FOREIGN KEY (municipio_id) REFERENCES municipio(id),
    FOREIGN KEY (proyecto_id) REFERENCES proyecto(id),
    PRIMARY KEY (municipio_id, proyecto_id)
);


--Querys--

-- Consulta
SELECT municipio.nombre AS nombre_municipio, proyecto.proyecto AS nombre_proyecto FROM municipio, proyecto, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id AND proyecto.id = proyecto_municipio.proyecto_id;

-- Subconsulta
SELECT proyecto.proyecto FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 1);

-- Función de agregación
SELECT municipio.nombre AS nombre_municipio, COUNT(proyecto_municipio.proyecto_id) AS cantidad_proyectos FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id GROUP BY municipio.nombre;


-- Consulta 2
SELECT municipio.nombre AS nombre_municipio, proyecto.proyecto AS nombre_proyecto FROM municipio, proyecto, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id AND proyecto.id = proyecto_municipio.proyecto_id AND municipio.nombre LIKE '%GAD%';

-- Función de agregación 2
SELECT municipio.nombre AS nombre_municipio, MIN(proyecto_municipio.proyecto_id) AS min_proyecto_id FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id GROUP BY municipio.nombre;


-- Consulta 3
SELECT municipio.nombre AS nombre_municipio, ciudad.nombre AS nombre_ciudad FROM municipio, ciudad
WHERE municipio.ciudad_id = ciudad.id;

-- Subconsulta 3
SELECT proyecto FROM proyecto
WHERE id IN (SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id = 3);

-- Función de agregación 3
SELECT municipio.nombre AS nombre_municipio, MAX(proyecto_id) AS max_proyecto_id FROM municipio, proyecto_municipio
WHERE municipio.id = proyecto_municipio.municipio_id GROUP BY municipio.nombre;

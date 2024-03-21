--Creacion de tablas--

CREATE TABLE habitaciones (
    habitacion_numero INT PRIMARY KEY,
    precio_por_noche DECIMAL(10, 2) NOT NULL,
    piso INT NOT NULL,
    max_personas INT
);

CREATE TABLE huespedes (
    id INT PRIMARY KEY,
    nombres VARCHAR(45) NOT NULL,
    apellidos VARCHAR(45) NOT NULL,
    telefono CHAR(10),
    correo VARCHAR(45),
    direccion VARCHAR(45),
    ciudad VARCHAR(45),
    pais VARCHAR(45)
);

CREATE TABLE reservas (
    inicio_fecha DATE,
    fin_fecha DATE,
    habitacion INT NOT NULL,
    huesped_id INT NOT NULL,
    FOREIGN KEY (habitacion) REFERENCES habitaciones(habitacion_numero),
    FOREIGN KEY (huesped_id) REFERENCES huespedes(id),
    PRIMARY KEY (habitacion, huesped_id)
);


--Querys--

-- Consulta
SELECT habitaciones.habitacion_numero, huespedes.nombres, huespedes.apellidos FROM habitaciones, reservas, huespedes
WHERE habitaciones.habitacion_numero = reservas.habitacion AND reservas.huesped_id = huespedes.id;

-- Subconsulta
SELECT nombres, apellidos FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 2);

-- Función de agregación
SELECT habitaciones.habitacion_numero, COUNT(reservas.huesped_id) AS cantidad_huespedes FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion GROUP BY habitaciones.habitacion_numero;


-- Consulta 2
SELECT habitaciones.habitacion_numero, huespedes.nombres, huespedes.apellidos FROM habitaciones, reservas, huespedes
WHERE habitaciones.piso = 4 AND habitaciones.habitacion_numero = reservas.habitacion AND reservas.huesped_id = huespedes.id;

-- Subconsulta 2
SELECT nombres, apellidos FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 3);

-- Función de agregación 2
SELECT habitaciones.habitacion_numero, AVG(reservas.huesped_id) AS promedio_huespedes FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion GROUP BY habitaciones.habitacion_numero;


-- Consulta 3
SELECT habitaciones.habitacion_numero, huespedes.nombres, huespedes.apellidos FROM habitaciones, reservas, huespedes
WHERE habitaciones.habitacion_numero = reservas.habitacion AND huespedes.id = reservas.huesped_id;

-- Subconsulta 3
SELECT nombres, apellidos FROM huespedes
WHERE id IN (SELECT huesped_id FROM reservas WHERE habitacion = 4);

-- Función de agregación 3
SELECT habitaciones.habitacion_numero, SUM(habitaciones.precio_por_noche) AS total_recaudado FROM habitaciones, reservas
WHERE habitaciones.habitacion_numero = reservas.habitacion GROUP BY habitaciones.habitacion_numero;

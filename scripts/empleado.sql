CREATE TABLE empleado (
	codigo_empleado INT NOT NULL CONSTRAINT pk_codigo_empleado PRIMARY KEY,
	nombre VARCHAR(25) NOT NULL,
	fecha DATE NOT NULL,
	hora TIME NOT NULL
);
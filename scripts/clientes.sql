CREATE TABLE clientes(
	cedula CHAR(10) CONSTRAINT pk_clientes PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL
);
CREATE TABLE estudiantes (
    cedula CHAR(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
	codigo_profesor INT,
    CONSTRAINT pk_estudiantes PRIMARY KEY (cedula),
	CONSTRAINT fk_codigo FOREIGN KEY (codigo_profesor) REFERENCES profesores(codigo)
);

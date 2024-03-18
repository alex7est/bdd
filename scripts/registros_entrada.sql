CREATE TABLE registros_entrada (
    codigo_registro INT NOT NULL,
    cedula_empleado CHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
	codigo_empleado INT NOT NULL,
    CONSTRAINT pk_registros_entrada PRIMARY KEY (codigo_registro),
	CONSTRAINT fk_codigo_empleado FOREIGN KEY (codigo_empleado) REFERENCES empleado(codigo_empleado)
);

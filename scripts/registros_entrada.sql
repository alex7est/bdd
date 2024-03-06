CREATE TABLE registros_entrada (
    codigo_registro INT NOT NULL,
    cedula_empleado CHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    CONSTRAINT pk_registros_entrada PRIMARY KEY (codigo_registro)
);

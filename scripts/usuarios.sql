CREATE TABLE usuarios (
    cedula CHAR(5) CONSTRAINT pk_usuarios PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    tipo_cuenta VARCHAR(20),
    limite_credito DECIMAL(10,5)
);

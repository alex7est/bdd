CREATE TABLE productos (
    codigo INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    precio MONEY NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT pk_productos PRIMARY KEY (codigo)
);

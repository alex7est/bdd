CREATE TABLE transacciones (
    codigo INT NOT NULL,
    numero_cuenta CHAR(5) NOT NULL,
    monto MONEY NOT NULL,
    tipo CHAR(1) NOT NULL,
    fecha DATE,
    hora TIME,
    CONSTRAINT pk_transacciones PRIMARY KEY (codigo)
);

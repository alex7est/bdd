CREATE TABLE prestamo (
    cedula CHAR(10) CONSTRAINT pk_prestamo PRIMARY KEY,
    monto MONEY,
    fecha_prestamo DATE,
    hora_prestamo TIME,
    garante VARCHAR(40),
	CONSTRAINT fk_cedula FOREIGN KEY (cedula) REFERENCES persona(cedula)
);

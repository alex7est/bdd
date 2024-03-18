CREATE TABLE compras(
	id_compra INT CONSTRAINT pk_compras PRIMARY KEY,
	cedula CHAR(10),
	fecha_compra DATE,
	monto DECIMAL(10,2),
	CONSTRAINT fk_cedula FOREIGN KEY (cedula) REFERENCES clientes(cedula)
);
CREATE TABLE ventas (
	id_venta INT CONSTRAINT pk_ventas PRIMARY KEY,
	codigo_producto INT NOT NULL,
	fecha_venta DATE NOT NULL,
	cantidad INT,
	CONSTRAINT fk_codigo FOREIGN KEY (codigo_producto) REFERENCES productos(codigo)
);
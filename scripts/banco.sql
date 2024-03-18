CREATE TABLE banco (
	codigo_banco INT CONSTRAINT pk_banco PRIMARY KEY,
	codigo_transaccion INT,
	detalle VARCHAR(100),
	CONSTRAINT fk_codigo FOREIGN KEY (codigo_transaccion) REFERENCES transacciones(codigo)
);
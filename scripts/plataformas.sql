CREATE TABLE plataformas (
	id_plataforma INT CONSTRAINT pk_plataformas PRIMARY KEY,
	nombre_plataforma VARCHAR(50),
	codigo_videojuego INT,
	CONSTRAINT fk_codigo FOREIGN KEY (codigo_videojuego) REFERENCES videojuegos(codigo)
);
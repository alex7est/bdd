CREATE TABLE persona (
    cedula CHAR(10) CONSTRAINT pk_persona PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estatura DECIMAL(10,2),
    fecha_nacimiento DATE NOT NULL,
    hora_nacimiento TIME,
    cantidad_ahorrada MONEY,
    numero_hijos INT
);

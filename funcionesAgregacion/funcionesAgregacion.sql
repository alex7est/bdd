--Relación cuentas con usuario
--Función de agregación 1:
SELECT MONEY(AVG(CAST(saldo AS NUMERIC))) AS saldo_promedio FROM cuentas WHERE cedula_propietario='12345';

--Función de agregación 2:
SELECT tipo_cuenta, COUNT(tipo_cuenta) AS total_cuentas FROM usuarios GROUP BY tipo_cuenta;

--Relación de clientes con compras
--Función de agregación 1:
SELECT cedula, SUM(monto) AS monto_total_compras FROM compras GROUP BY cedula;

--Función de agregación 2:
SELECT fecha_compra, COUNT(fecha_compra) AS total_compras FROM compras WHERE fecha_compra='2024-03-15' GROUP BY fecha_compra;

--Relación de estudiantes y profesores
--Función de agregación 1:
SELECT codigo_profesor, COUNT(cedula) AS total_estudiantes FROM estudiantes GROUP BY codigo_profesor;

--Función de agregación 2:
SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio FROM estudiantes;

--Relación de personas y prestamo
--Función de agregación 1:
SELECT cedula, SUM(monto) AS monto_total_prestamos FROM prestamo GROUP BY cedula;

--Función de agregación 2:
SELECT COUNT(numero_hijos) AS total_personas FROM persona WHERE numero_hijos>1;

--Relación de productos y ventas
--Función de agregación 1:
SELECT MAX(precio) AS precio_maximo FROM productos;

--Función de agregación 2:
SELECT SUM(cantidad) AS cantidad_tota_vendida FROM ventas;

--Relación de transacciones y banco
--Función de agregación 1:
SELECT COUNT(tipo) AS total_transacciones_credito FROM transacciones WHERE tipo='C';

--Función de agregación 2:
SELECT numero_cuenta, ROUND(AVG(CAST(monto AS DECIMAL)),2) AS monto_promedio FROM transacciones GROUP BY numero_cuenta;

--Relación de videojuegos y plataformas
--Función de agregación 1:
SELECT codigo_videojuego, COUNT(nombre_plataforma) AS total_plataformas FROM plataformas GROUP BY codigo_videojuego;

--Función de agregación 2:
SELECT ROUND(AVG(valoracion)) AS valoracion_promedio FROM videojuegos;

--Relación de registros_entrado y empleado
--Función de agregación 1:
SELECT cedula_empleado, COUNT(codigo_registro) AS total_registros_entrada FROM registros_entrada GROUP BY cedula_empleado;

--Función de agregación 2:
SELECT MIN(fecha) AS fecha_minima, MAX(fecha) AS fecha_maxima FROM registros_entrada;

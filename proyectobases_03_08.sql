CREATE DATABASE Proyecto;
USE Proyecto;

CREATE TABLE Productos(
	codigo_producto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nombre_producto VARCHAR(60),
    precio_producto DOUBLE(5,2) NOT NULL,
    stock INT NOT NULL,
    fecha_fabricacion DATE NOT NULL
);

CREATE TABLE Clientes(
	CI INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(30),
    correo VARCHAR(50) unique,
    numero_telefono VARCHAR(10) NOT NULL,
    direccion VARCHAR(100) 
);

CREATE TABLE Pedido(
	id_pedido INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    cantidad INT NOT NULL,
    valor_pedido DOUBLE (5,2),
    codigo_producto INT NOT NULL,
    FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo_producto)
);

CREATE TABLE Envio(
	id_envio INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fecha_entrega DATE NOT NULL,
    CI INT NOT NULL,
    id_pedido INT NOT NULL,
    FOREIGN KEY (CI) REFERENCES Clientes(CI),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)

);

CREATE TABLE Categorias(
	id_categoria INT PRIMARY KEY NOT NULL,
    nombre_categoria VARCHAR(50) NOT NULL,
    codigo_producto INT ,
    FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo_producto)
);

CREATE TABLE Pagos(
	id_pago INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    valor DOUBLE(5,2) NOT NULL,
    fecha_pago DATE NOT NULL,
    CI INT NOT NULL,
    id_pedido INT NOT NULL,
    FOREIGN KEY (CI) REFERENCES Clientes(CI),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)

);

-- Insercion de datos

INSERT INTO Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) VALUES
('Camisa de manga larga', 25.99, 100, '2022-01-01'),
('Pantalón de jeans', 39.99, 50, '2022-02-01'),
('Zapatillas de running', 59.99, 200, '2022-03-01'),
('Vestido de verano', 29.99, 150, '2022-04-01'),
('Chaquetón de cuero', 99.99, 50, '2022-05-01'),
('Sandalias de playa', 19.99, 300, '2022-06-01'),
('Camiseta de manga corta', 14.99, 400, '2022-07-01'),
('Pantalón de chándal', 29.99, 250, '2022-08-01'),
('Zapatos de vestir', 69.99, 100, '2022-09-01'),
('Abrigo de invierno', 129.99, 50, '2022-10-01'),
('Gorra de béisbol', 12.99, 50, '2022-11-01'),
('Cinturón de cuero', 19.99, 30, '2022-12-01'),
('Bolsa de mano', 29.99, 40, '2023-01-01'),
('Reloj de pulsera', 49.99, 20, '2023-02-01'),
('Gafas de sol', 14.99, 60, '2023-03-01'),
('Cadena de plata', 39.99, 15, '2023-04-01'),
('Pulsera de cuero', 9.99, 80, '2023-05-01'),
('Anillo de compromiso', 99.99, 10, '2023-06-01'),
('Collar de perlas', 69.99, 12, '2023-07-01'),
('Bolsa de viaje', 49.99, 25, '2023-08-01');


INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) VALUES
(123456, 'Juan Pérez', 'juan.perez@example.com', '0987654321', 'San Juan'),
(234567, 'María Rodríguez', 'maria.rodriguez@example.com', '0987654322', 'San Juan'),
(345678, 'Carlos Gómez', 'carlos.gomez@example.com', '0987654323', 'La carolina'),
(456789, 'Ana García', 'ana.garcia@example.com', '0987654324', 'San Juan'),
(567890, 'Pedro Martínez', 'pedro.martinez@example.com', '0987654325', 'Matovelle'),
(678901, 'Sofía Hernández', 'sofia.hernandez@example.com', '0987654326', 'Cumbaya'),
(789012, 'Luis Díaz', 'luis.diaz@example.com', '0987654327', 'La carchi'),
(890123, 'Isabel González', 'isabel.gonzalez@example.com', '0987654328', 'El ejido'),
(901234, 'Francisco López', 'francisco.lopez@example.com', '0987654329', 'El ejido'),
(102345, 'Cristina Sánchez', 'cristina.sanchez@example.com', '0987654330', 'Mena 2'),
(112233, 'Juan Carlos', 'juan.carlos@example.com', '0987654331', 'Quito'),
(223344, 'María José', 'maria.jose@example.com', '0987654332', 'Guayaquil'),
(334455, 'Carlos Andrés', 'carlos.andres@example.com', '0987654333', 'Cuenca'),
(445566, 'Ana Lucía', 'ana.lucia@example.com', '0987654334', 'Manta'),
(556677, 'Pedro Pablo', 'pedro.pablo@example.com', '0987654335', 'Ibarra'),
(667788, 'Sofía Isabel', 'sofia.isabel@example.com', '0987654336', 'Loja'),
(778899, 'Luis Alberto', 'luis.alberto@example.com', '0987654337', 'Ambato'),
(889900, 'Isabel Cristina', 'isabel.cristina@example.com', '0987654338', 'Tulcán'),
(990011, 'Francisco Javier', 'francisco.javier@example.com', '0987654339', 'Esmeraldas'),
(110022, 'Cristina María', 'cristina.maria@example.com', '0987654340', 'Machala');


INSERT INTO Pedido (fecha_pedido, cantidad, valor_pedido, codigo_producto) VALUES
('2022-01-01', 2, 51.98, 1),
('2022-01-15', 1, 39.99, 2),
('2022-02-01', 1, 59.99, 3),
('2022-03-01', 2, 59.98, 4),
('2022-04-01', 1, 99.99, 5),
('2022-05-01', 3, 59.97, 6),
('2022-06-01', 1, 14.99, 7),
('2022-07-01', 2, 59.98, 8),
('2022-08-01', 1, 69.99, 9),
('2022-09-01', 1, 129.99, 10),
('2023-01-01', 1, 12.99, 11),
('2023-02-01', 2, 39.98, 12),
('2023-03-01', 1, 29.99, 13),
('2023-04-01', 3, 149.97, 14),
('2023-05-01', 1, 14.99, 15),
('2023-06-01', 2, 79.98, 16),
('2023-07-01', 1, 9.99, 17),
('2023-08-01', 1, 99.99, 18),
('2023-09-01', 2, 139.98, 19),
('2023-10-01', 1, 49.99, 20);


INSERT INTO Envio (fecha_entrega, CI, id_pedido) VALUES
('2022-01-05', 123456, 1),
('2022-01-20', 234567, 2),
('2022-02-05', 345678, 3),
('2022-03-05', 456789, 4),
('2022-04-05', 567890, 5),
('2022-05-05', 678901, 6),
('2022-06-05', 789012, 7),
('2022-07-05', 890123, 8),
('2022-08-05', 901234, 9),
('2022-09-05', 102345, 10),
('2023-01-05', 112233, 11),
('2023-02-05', 223344, 12),
('2023-03-05', 334455, 13),
('2023-04-05', 445566, 14),
('2023-05-05', 556677, 15),
('2023-06-05', 667788, 16),
('2023-07-05', 778899, 17),
('2023-08-05', 889900, 18),
('2023-09-05', 990011, 19),
('2023-10-05', 110022, 20);


INSERT INTO Categorias (id_categoria, nombre_categoria, codigo_producto) VALUES
(1, 'Ropa de verano', 1),
(2, 'Ropa de invierno', 2),
(3, 'Calzado deportivo', 3),
(4, 'Ropa de vestir', 4),
(5, 'Accesorios', 5),
(6, 'Ropa de playa', 6),
(7, 'Ropa casual', 7),
(8, 'Calzado formal', 8),
(9, 'Ropa de abrigo', 9),
(10, 'Ropa de moda', 10),
(11, 'Accesorios de moda', 11),
(12, 'Bolsas y carteras', 12),
(13, 'Relojes y joyas', 13),
(14, 'Gafas y accesorios', 14),
(15, 'Cadenas y pulseras', 15),
(16, 'Anillos y collares', 16),
(17, 'Bolsas de viaje', 17),
(18, 'Ropa de playa', 18),
(19, 'Ropa de deporte', 19),
(20, 'Ropa de moda', 20);


INSERT INTO Pagos (valor, fecha_pago, CI, id_pedido) VALUES
(51.98, '2022-01-01', 123456, 1),
(39.99, '2022-01-15', 234567, 2),
(59.99, '2022-02-01', 345678, 3),
(59.98, '2022-03-01', 456789, 4),
(99.99, '2022-04-01', 567890, 5),
(59.97, '2022-05-01', 678901, 6),
(14.99, '2022-06-01', 789012, 7),
(59.98, '2022-07-01', 890123, 8),
(69.99, '2022-08-01', 901234, 9),
(129.99, '2022-09-01', 102345, 10),
(12.99, '2023-01-01', 112233, 11),
(39.98, '2023-02-01', 223344, 12),
(29.99, '2023-03-01', 334455, 13),
(149.97, '2023-04-01', 445566, 14),
(14.99, '2023-05-01', 556677, 15),
(79.98, '2023-06-01', 667788, 16),
(9.99, '2023-07-01', 778899, 17),
(99.99, '2023-08-01', 889900, 18),
(139.98, '2023-09-01', 990011, 19),
(49.99, '2023-10-01', 110022, 20);

-- ------------------------------------------------------------------------------------------

#Consultas con select where y order by 
SELECT * FROM Productos;
SELECT * FROM Clientes;
SELECT * FROM Pedido;
SELECT * FROM Clientes WHERE direccion = 'San Juan';
SELECT * FROM Productos WHERE precio_producto > 50;
SELECT * FROM Pedido WHERE fecha_pedido > '2022-03-01';
SELECT * FROM Productos ORDER BY precio_producto ASC;
SELECT * FROM Clientes ORDER BY nombre DESC;

-- -------------------------------------------------------------------------------------------------------

#Subconsultas relacionadas
SELECT * FROM Productos p
WHERE p.stock > (SELECT AVG(stock) FROM Productos);

SELECT * FROM Pedido p
WHERE p.valor_pedido > (SELECT AVG(valor_pedido) FROM Pedido);

SELECT * FROM Productos p
WHERE p.precio_producto > (SELECT AVG(precio_producto) FROM Productos);

SELECT * FROM Pedido p
WHERE p.cantidad > (SELECT AVG(cantidad) FROM Pedido);

SELECT * FROM Productos p
WHERE p.precio_producto > (SELECT precio_producto FROM Productos WHERE nombre_producto = 'Camisa de manga larga');

SELECT * FROM Clientes c
WHERE c.numero_telefono LIKE '098%';

SELECT * FROM Pedido p
WHERE p.cantidad <= (SELECT MAX(cantidad) FROM Pedido);

SELECT DISTINCT c.* FROM Clientes c
WHERE EXISTS (SELECT 1 FROM Envio e WHERE e.CI = c.CI);

-- --------------------------------------------------------------------------------------------------------
-- Funciones de cadena

-- Concatenar el nombre del cliente con su correo
select concat(nombre, " - ", correo) as nombre_con_correo from clientes;

-- obtener los primeros tres caracteres del nombre del producto:
select substring(nombre_producto, 1,3) as primeros_tres_caracteres from productos;

-- Encontrar la posicion del caracter @ en el correo de los clientes
-- la funcion de charindex pertenece a MSSQL para MySQL se utiliza locate
select nombre, locate('@', correo) as posicion_arroba from clientes;

-- reemplazar la palabra 'de' en el nombre del producto por 'DE'
select nombre_producto, replace(nombre_producto, 'de', 'DE') as nombre_modificado from productos;

-- Convertir el nombre del cliente a mayusculas
select nombre, upper(nombre) as nombre_mayusculas from clientes;

-- Convertir el nombre del cliente a minusculas
select nombre, lower(nombre) as nombre_minusculas from clientes;

-- ---------------------------------------------------------------------------------------------------------------
-- Funciones fecha y hora

-- agregar 7 dias a la fecha del pedido
select id_pedido, fecha_pedido, date_add(fecha_pedido, interval 7 day) as nueva_fecha from pedido;

-- calcular la diferencia en dias entre la fecha del pedido y la fecha de entrega
select e.id_envio, datediff(e.fecha_entrega, p.fecha_pedido) as dias_diferencia from envio E
join pedido p on e.id_pedido = p.id_pedido;

-- obtener fecha y hora actual
select now() as fecha_hora_actual;

-- formatear la feachde fabricacion de los productos en formato "YYYY-MM-DD"
select codigo_producto, nombre_producto, date_format(fecha_fabricacion, '%Y-%m-%d') as fecha_formateada
from productos;

-- calcular la diferencia en meses entre la fecha actual y la fecha de fabricacion
select codigo_producto, nombre_producto, timestampdiff(month, fecha_fabricacion, now()) 
as meses_diferencia from productos;

-- agregar un mes a la fecha de pago
select id_pago, valor, fecha_pago, date_add(fecha_pago, interval 1 month)
as nueva_fecha_pago from pagos;

-- ---------------------------------------------------------------------------------------------------------
-- Funciones matematicas

-- redondear el valor del pedido a 1 decimal
select id_pedido, valor_pedido, round(valor_pedido, 1) as valor_redondeado from pedido;

-- obtener el techo del precio del producto:
select codigo_producto, nombre_producto, ceiling(precio_producto) as precio_ceil
from productos;

-- obtener el piso del precio del producto
select codigo_producto, nombre_producto, floor(precio_producto) as precio_floor
from productos; 

-- obtener la suma total de los pagos realizados
select sum(valor) as total_pagos from pagos;

-- obtener el valor maximo y minimo de los pagos realizados
select max(valor) as valor_max, min(valor) as valor_min from pagos;

-- obtener el promedio de los valores de los pedidos
select round(avg(valor_pedido),2) as promedio_pedidos from pedido;


-- --------------------------------------------------------------------------------------

-- 6. Implementacion de vistas, procedimientos almacenados y triggers
-- Vistas: creacion, actualizacion, uso de vistas materializadas
-- Prodecimientos almacenados: creacion, parametros de entrada y salida, manejo de excepciones
-- Triggers: tipos de triggers (BEFORE, AFTER), manejo de transacciones dentro de triggers

-- Vistas
create view vista_productos_stock_alto as
select codigo_producto, nombre_producto, precio_producto, stock, fecha_fabricacion
from productos
where stock > 100;

CREATE VIEW ProductosBajoStock AS
SELECT nombre_producto, stock
FROM Productos
WHERE stock < 50;

INSERT INTO Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) VALUES
('Gorro style DC', 18.99, 20, '2022-12-10'),
('Calcetines de Spiderman', 15.99, 15, '2022-11-11'),
('Sueter de algodon oscuro', 28.99, 10, '2022-12-10');

-- ---------------------------------------------------------------------------------------


-- Vista para ver detalles de pedidos y envios
CREATE VIEW DetallesPedidosEnvios AS
SELECT p.id_pedido, p.fecha_pedido, p.cantidad, p.valor_pedido, e.fecha_entrega, c.nombre
FROM Pedido p
JOIN Envio e ON p.id_pedido = e.id_pedido
JOIN Clientes c ON e.CI = c.CI;

-- Actualizacion de vista ProductosBajoStock
CREATE OR REPLACE VIEW ProductosBajoStock AS
SELECT nombre_producto, stock, precio_producto
FROM Productos
WHERE stock < 50;

-- ---------------------------------------------------------------------------------------
-- Vistas materializadas
CREATE TABLE ProductosBajoStockMaterializada AS
SELECT nombre_producto, stock, precio_producto
FROM Productos
WHERE stock < 50;

select * from ProductosBajoStockMaterializada;

-- Actualización periódica de la vista materializada
TRUNCATE TABLE ProductosBajoStockMaterializada;
INSERT INTO ProductosBajoStockMaterializada
SELECT nombre_producto, stock, precio_producto
FROM Productos
WHERE stock > 50 and stock < 250;

-- ---------------------------------------------------------------------------------------
-- Procedimientos Almacenados
DELIMITER //
CREATE PROCEDURE InsertarProducto(
    IN nombre VARCHAR(60),
    IN precio DOUBLE(5,2),
    IN stock INT,
    IN fecha DATE)
BEGIN
    INSERT INTO Productos (nombre_producto, precio_producto, stock, fecha_fabricacion)
    VALUES (nombre, precio, stock, fecha);
END //
DELIMITER ;

DELIMITER //

CREATE PROCEDURE ActualizarPrecioProductosAleatorio()
BEGIN
    UPDATE Productos
    SET precio_producto = ROUND(RAND() * 100, 2);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE ActualizarNombreCliente(
    IN codigo_cliente INT,
    IN nuevo_nombre VARCHAR(100)
)
BEGIN
    -- Actualizar el nombre del cliente
    UPDATE clientes
    SET nombre = nuevo_nombre
    WHERE CI = codigo_cliente;
END //

DELIMITER ;




-- ---------------------------------------------------------------------------------------

-- Ejecucion de procedimientos
CALL InsertarProducto('Camiseta Polo', 29.99, 150, '2024-01-01');
CALL InsertarProducto('Pantalon Lejean', 25.99, 150, '2024-01-01');
CALL InsertarProducto('Saco Polar Polo', 27.99, 150, '2024-01-01');
CALL InsertarProducto('Bufanda AngryBirds', 30.99, 150, '2024-01-01');
CALL InsertarProducto('Camiseta', 21.99, 150, '2024-01-01');

CALL ActualizarPrecioProductosAleatorio();
CALL ActualizarNombreCliente(901234, 'Alejandro Lema');
select * from clientes where CI = '901234';
-- ---------------------------------------------------------------------------------------
CREATE TABLE auditoria_inserciones_productos (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    codigo_producto INT,
    nombre_producto VARCHAR(100),
    precio_producto DOUBLE(5,2),
    fecha_insercion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Triggers
DELIMITER //

CREATE TRIGGER trg_insertar_producto AFTER INSERT ON productos
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_inserciones_productos (codigo_producto, nombre_producto, precio_producto)
    VALUES (NEW.codigo_producto, NEW.nombre_producto, NEW.precio_producto);
END //

DELIMITER ;


CALL InsertarProducto('Pantalon de algodon oscuro', 21.99, 250, '2024-01-01');


select * from auditoria_inserciones_productos;

CREATE TABLE auditoria_precios (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    codigo_producto INT,
    precio_anterior DOUBLE(5,2),
    precio_nuevo DOUBLE(5,2),
    fecha_cambio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DELIMITER //

CREATE TRIGGER trg_actualizar_precio AFTER UPDATE ON productos
FOR EACH ROW
BEGIN
    IF NEW.precio_producto != OLD.precio_producto THEN
        INSERT INTO auditoria_precios (codigo_producto, precio_anterior, precio_nuevo)
        VALUES (NEW.codigo_producto, OLD.precio_producto, NEW.precio_producto);
    END IF;
END //

DELIMITER ;
CALL ActualizarPrecioProductosAleatorio();
select * from auditoria_precios;

CREATE TABLE auditoria_clientes (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    CI INT,
    nombre_anterior VARCHAR(100),
    nombre_nuevo VARCHAR(100),
    fecha_cambio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER trg_actualizar_nombre AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
    IF NEW.nombre != OLD.nombre THEN
        INSERT INTO auditoria_clientes (CI, nombre_anterior, nombre_nuevo)
        VALUES (NEW.CI, OLD.nombre, NEW.nombre);
    END IF;
END //

DELIMITER ;
CALL ActualizarNombreCliente('102345', 'Mateo Porras');
CALL ActualizarNombreCliente('109123', 'Eduardo Porras');
CALL ActualizarNombreCliente('119234', 'Alexis Porras');
select * from auditoria_clientes;
-- ---------------------------------------------------------------------------------------
-- TRANSACCIONES

-- inicia la transaccion
start transaction;

-- Establecemos el autocommit en 0 o false
-- set AUTOCOMMIT=0;

-- punto de autoguardado
SAVEPOINT mi_punto_de_guardado;

-- accion a realizar (insertar, eliminar o actualizar datos)
INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) value
(1307550200, 'Mateo Bernal', 'jose.bernal@epn.edu.ec', '099538934', 'San Juan y coondorcunga');

-- confirma la accion realizada previamente 
commit;

-- revierte la accion realizada previamente (si la accion a sido confirmada no se puede revertir)
-- rollback;
-- es muy importante confirmar la transaccion con commit, ya que si no se coloca 
-- este comando se borra la accion realizada previamente

-- ejemplos commit
start transaction;
set AUTOCOMMIT=0;
delete from Productos where codigo_producto=5;
commit;

start transaction;
SAVEPOINT mi_punto_de_guardado;
update clientes set nombre='Jose Ayovi' where CI=234567;
commit;

-- ejmplos rollback
start transaction;
savepoint mi_punto_de_guardado;
update Productos set nombre_producto='Guante plomo' where codigo_producto=19;
rollback;

select * from Productos;
select * from Clientes;


-- transacciones distribuidas
XA START 'identificador_de_transaccion';
INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) value
(12220200, 'Carlos Chicaiza', 'carlos.c@epn.edu.ec', '022953055', 'La Carolina');

INSERT INTO Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) VALUES
('Blue Jean', 19.99, 5, '2024-12-31');

XA END 'identificador_de_transaccion';
XA PREPARE 'identificador_de_transaccion';
XA RECOVER;


-- niveles de aislamiento

-- READ UNCOMMITTED
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
START TRANSACTION;
INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) value
(130200, 'Darwin Pardo', 'pardo@epn.edu.ec', '099999999', 'La ecuatoriana');

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
START TRANSACTION;
SELECT * FROM Clientes; 


-- READ COMMITTED
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
UPDATE Productos set nombre_producto='Guante plomo' where codigo_producto=19;
COMMIT;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
START TRANSACTION;
SELECT * FROM Productos; 


--  SERIALIZABLE
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) value
(1111110, 'Mario Bros', 'mario@epn.edu.ec', '099888934', 'San Juan');
-- No se confirma la transacción

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
-- No puede leer el registro insertado previamente
SELECT * FROM clientes; 

-- REPEATABLE READ
/* SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

START TRANSACTION;
-- lee el registro original
SELECT * FROM Productos; 

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION;
DELETE FROM Productos where codigo_producto=13;
COMMIT;

-- lee el registro original no el borrado
SELECT * FROM Productos; */

#mateo t 10 registros mas en cada tabla y try and catch 
INSERT INTO Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) VALUES
('Jersey deportivo', 34.99, 80, '2023-08-01'),
('Botines de fútbol', 75.49, 60, '2023-09-01'),
('Sombrero de verano', 15.49, 120, '2023-10-01'),
('Parka impermeable', 89.99, 40, '2023-11-01'),
('Guantes de cuero', 25.99, 100, '2023-12-01'),
('Pantalón cargo', 29.99, 200, '2024-01-01'),
('Botas de montaña', 99.99, 70, '2024-02-01'),
('Bermudas de lino', 19.99, 150, '2024-03-01'),
('Zapatos de baile', 49.99, 50, '2024-04-01'),
('Bufanda de lana', 12.99, 100, '2024-05-01');

INSERT INTO Clientes (CI, nombre, correo, numero_telefono, direccion) VALUES
(220033, 'Gabriela Suárez', 'gabriela.suarez@example.com', '0987654341', 'Santo Domingo'),
(330044, 'Miguel Ángel', 'miguel.angel@example.com', '0987654342', 'Riobamba'),
(440055, 'Verónica Ríos', 'veronica.rios@example.com', '0987654343', 'Tena'),
(550066, 'Ricardo Paredes', 'ricardo.paredes@example.com', '0987654344', 'Portoviejo'),
(660077, 'Beatriz Molina', 'beatriz.molina@example.com', '0987654345', 'Babahoyo'),
(770088, 'Alejandro Rivas', 'alejandro.rivas@example.com', '0987654346', 'Latacunga'),
(880099, 'Natalia Torres', 'natalia.torres@example.com', '0987654347', 'Quevedo'),
(990022, 'Raúl Vargas', 'raul.vargas@example.com', '0987654348', 'Loja'),
(111100, 'Marcela Lara', 'marcela.lara@example.com', '0987654349', 'Samborondón'),
(121212, 'Pablo Cárdenas', 'pablo.cardenas@example.com', '0987654350', 'Guaranda');

INSERT INTO Pedido (fecha_pedido, cantidad, valor_pedido, codigo_producto) VALUES
('2023-11-01', 1, 34.99, 21),
('2023-12-15', 2, 150.98, 22),
('2024-01-10', 1, 15.49, 23),
('2024-02-20', 3, 269.97, 24),
('2024-03-05', 1, 25.99, 25),
('2024-04-10', 2, 59.98, 26),
('2024-05-15', 1, 99.99, 27),
('2024-06-01', 3, 59.97, 28),
('2024-07-05', 2, 99.98, 29),
('2024-08-10', 1, 12.99, 30);

INSERT INTO Envio (fecha_entrega, CI, id_pedido) VALUES
('2023-11-05', 220033, 21),
('2023-12-20', 330044, 22),
('2024-01-15', 440055, 23),
('2024-02-25', 550066, 24),
('2024-03-10', 660077, 25),
('2024-04-15', 770088, 26),
('2024-05-20', 880099, 27),
('2024-06-05', 990022, 28),
('2024-07-10', 111100, 29),
('2024-08-15', 121212, 30);

INSERT INTO Pagos (valor, fecha_pago, CI, id_pedido) VALUES
(34.99, '2023-11-01', 220033, 21),
(150.98, '2023-12-15', 330044, 22),
(15.49, '2024-01-10', 440055, 23),
(269.97, '2024-02-20', 550066, 24),
(25.99, '2024-03-05', 660077, 25),
(59.98, '2024-04-10', 770088, 26),
(99.99, '2024-05-15', 880099, 27),
(59.97, '2024-06-01', 990022, 28),
(99.98, '2024-07-05', 111100, 29),
(12.99, '2024-08-10', 121212, 30);

INSERT INTO Categorias (id_categoria, nombre_categoria, codigo_producto) VALUES
(21, 'Ropa deportiva', 21),
(22, 'Calzado de fútbol', 22),
(23, 'Accesorios de verano', 23),
(24, 'Ropa de lluvia', 24),
(25, 'Accesorios de invierno', 25),
(26, 'Ropa casual', 26),
(27, 'Calzado de montaña', 27),
(28, 'Ropa de verano', 28),
(29, 'Calzado de baile', 29),
(30, 'Accesorios de moda', 30);

DELIMITER //

create procedure InsertSampleData()
begin
    declare exit handler for sqlexception
    begin
        rollback;
        select 'An error occurred. The transaction has been rolled back.' AS ErrorMessage;
    end;

    start transaction;

    -- Attempt to insert data into each table
    begin
        insert into Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) values
        ('Sudadera con capucha', 29.99, 150, '2023-09-01'),
        ('Pantalón corto', 22.99, 180, '2023-09-10'),
        ('Zapatillas casual', 49.99, 90, '2023-09-15'),
        ('Camiseta sin mangas', 14.99, 220, '2023-09-20'),
        ('Chaleco acolchado', 34.99, 75, '2023-09-25'),
        ('Calcetines deportivos', 9.99, 300, '2023-09-30'),
        ('Chaqueta de cuero', 109.99, 40, '2023-10-01'),
        ('Pijama de algodón', 19.99, 150, '2023-10-05'),
        ('Cinturón de tela', 15.99, 200, '2023-10-10'),
        ('Mochila de lona', 39.99, 100, '2023-10-15');
    end;

    begin
        insert into Clientes (CI, nombre, correo, numero_telefono, direccion) values
        (200033, 'Lucas Martínez', 'lucas.martinez@example.com', '0987654361', 'Cayambe'),
        (300044, 'Fernanda Ramírez', 'fernanda.ramirez@example.com', '0987654362', 'Salinas'),
        (400055, 'Hugo Salinas', 'hugo.salinas@example.com', '0987654363', 'Quevedo'),
        (500066, 'Paula Bonilla', 'paula.bonilla@example.com', '0987654364', 'Milagro'),
        (600077, 'Diego Ortega', 'diego.ortega@example.com', '0987654365', 'Daule'),
        (700088, 'Daniela Ruiz', 'daniela.ruiz@example.com', '0987654366', 'Jipijapa'),
        (800099, 'Rodrigo Cabrera', 'rodrigo.cabrera@example.com', '0987654367', 'Latacunga'),
        (900022, 'Carmen Flores', 'carmen.flores@example.com', '0987654368', 'Santa Elena'),
        (111111, 'Guillermo Montalvo', 'guillermo.montalvo@example.com', '0987654369', 'Chone'),
        (121212, 'Sara Jiménez', 'sara.jimenez@example.com', '0987654370', 'Azogues');
    end;

    begin
        insert into Pedido (fecha_pedido, cantidad, valor_pedido, codigo_producto) values
        ('2023-09-05', 1, 29.99, 31),
        ('2023-09-15', 2, 45.98, 32),
        ('2023-09-25', 1, 49.99, 33),
        ('2023-10-05', 2, 29.98, 34),
        ('2023-10-15', 1, 34.99, 35),
        ('2023-10-25', 3, 29.97, 36),
        ('2023-11-05', 1, 109.99, 37),
        ('2023-11-15', 2, 39.98, 38),
        ('2023-11-25', 1, 15.99, 39),
        ('2023-12-05', 1, 39.99, 40);
    end;

    begin
        insert into Envio (fecha_entrega, CI, id_pedido) values
        ('2023-09-10', 200033, 31),
        ('2023-09-20', 300044, 32),
        ('2023-09-30', 400055, 33),
        ('2023-10-10', 500066, 34),
        ('2023-10-20', 600077, 35),
        ('2023-10-30', 700088, 36),
        ('2023-11-10', 800099, 37),
        ('2023-11-20', 900022, 38),
        ('2023-11-30', 111111, 39),
        ('2023-12-10', 121212, 40);
    end;

    begin
        insert into Categorias (id_categoria, nombre_categoria, codigo_producto) values
        (31, 'Sudaderas', 31),
        (32, 'Pantalones cortos', 32),
        (33, 'Calzado casual', 33),
        (34, 'Camisetas', 34),
        (35, 'Chalecos', 35),
        (36, 'Calcetines', 36),
        (37, 'Chaquetas', 37),
        (38, 'Pijamas', 38),
        (39, 'Cinturones', 39),
        (40, 'Mochilas', 40);
    end;

    begin
        insert into Pagos (valor, fecha_pago, CI, id_pedido) values
        (29.99, '2023-09-05', 200033, 31),
        (45.98, '2023-09-15', 300044, 32),
        (49.99, '2023-09-25', 400055, 33),
        (29.98, '2023-10-05', 500066, 34),
        (34.99, '2023-10-15', 600077, 35),
        (29.97, '2023-10-25', 700088, 36),
        (109.99, '2023-11-05', 800099, 37),
        (39.98, '2023-11-15', 900022, 38),
        (15.99, '2023-11-25', 111111, 39),
        (39.99, '2023-12-05', 121212, 40);
    end;

    commit;
    select 'Data inserted successfully' as SuccessMessage;
end //

DELIMITER ;

DELIMITER //

create procedure InsertWithSpecificErrorHandling()
begin
    -- Manejo de errores generales
    declare exit handler for sqlexception
    begin
        rollback;
        select 'Ocurrió un error SQL general. La transacción ha sido revertida.' as ErrorMessage;
    end;

    -- Manejo específico de errores para clave duplicada
    declare exit handler for sqlstate'23000'
    begin
        rollback;
        select 'Ocurrió un error de clave duplicada. La transacción ha sido revertida.' AS DuplicateKeyErrorMessage;
    end;

    start transaction;

    -- Intentar insertar datos en Productos
    begin
        insert into Productos (nombre_producto, precio_producto, stock, fecha_fabricacion) values
        ('Guantes de lana', 12.99, 110, '2024-01-01'),
        ('Bufanda de cachemira', 55.99, 60, '2024-01-15'),
        ('Zapatos de tenis', 79.99, 100, '2024-01-30'),
        ('Camisa de seda', 45.99, 50, '2024-02-05'),
        ('Corbata de seda', 19.99, 200, '2024-02-10'),
        ('Gafas de lectura', 12.99, 80, '2024-02-15'),
        ('Sombrero de lana', 22.99, 70, '2024-02-20'),
        ('Traje de baño', 35.99, 90, '2024-02-25'),
        ('Bata de baño', 49.99, 30, '2024-03-01'),
        ('Zapatos de seguridad', 89.99, 40, '2024-03-05');
    end;

    -- Insertar datos en Clientes
    begin
        insert into Clientes (CI, nombre, correo, numero_telefono, direccion) values
        (133233, 'Sofía Peralta', 'sofia.peralta@example.com', '0987654371', 'Puyo'),
        (233344, 'Valeria Mendoza', 'valeria.mendoza@example.com', '0987654372', 'Macas'),
        (333455, 'Emilio Vargas', 'emilio.vargas@example.com', '0987654373', 'El Coca'),
        (433566, 'Julieta Estrada', 'julieta.estrada@example.com', '0987654374', 'Zamora'),
        (533677, 'Francisco Cobo', 'francisco.cobo@example.com', '0987654375', 'Otavalo'),
        (633788, 'Lorena Jiménez', 'lorena.jimenez@example.com', '0987654376', 'Esmeraldas'),
        (733899, 'César Cabrera', 'cesar.cabrera@example.com', '0987654377', 'Ibarra'),
        (833900, 'Camila Vera', 'camila.vera@example.com', '0987654378', 'Ambato'),
        (933011, 'Alonso Herrera', 'alonso.herrera@example.com', '0987654379', 'Tulcán'),
        (103422, 'Inés Sandoval', 'ines.sandoval@example.com', '0987654380', 'Machala');
    end;

    -- Insertar datos en Pedido
    begin
        insert into Pedido (fecha_pedido, cantidad, valor_pedido, codigo_producto) values
        ('2024-01-01', 2, 25.98, 41),
        ('2024-01-15', 1, 55.99, 42),
        ('2024-01-30', 2, 159.98, 43),
        ('2024-02-05', 1, 45.99, 44),
        ('2024-02-10', 3, 59.97, 45),
        ('2024-02-15', 1, 12.99, 46),
        ('2024-02-20', 2, 45.98, 47),
        ('2024-02-25', 1, 35.99, 48),
        ('2024-03-01', 1, 49.99, 49),
        ('2024-03-05', 2, 179.98, 50);
    end;

    -- Insertar datos en Envio
    begin
        insert into Envio (fecha_entrega, CI, id_pedido) values
        ('2024-01-06', 133233, 41),
        ('2024-01-20', 233344, 42),
        ('2024-02-04', 333455, 43),
        ('2024-02-10', 433566, 44),
        ('2024-02-16', 533677, 45),
        ('2024-02-21', 633788, 46),
        ('2024-02-27', 733899, 47),
        ('2024-03-03', 833900, 48),
        ('2024-03-09', 933011, 49),
        ('2024-03-14', 103422, 50);
    end;

    -- Insertar datos en Categorias
    begin
        insert into Categorias (id_categoria, nombre_categoria, codigo_producto) values
        (41, 'Guantes', 41),
        (42, 'Bufandas', 42),
        (43, 'Zapatos', 43),
        (44, 'Camisas', 44),
        (45, 'Corbatas', 45),
        (46, 'Gafas', 46),
        (47, 'Sombreros', 47),
        (48, 'Trajes', 48),
        (49, 'Batas', 49),
        (50, 'Zapatos de trabajo', 50);
    end;

    -- Insertar datos en Pagos
    begin
        insert into Pagos (valor, fecha_pago, CI, id_pedido) values
        (25.98, '2024-01-01', 133233, 41),
        (55.99, '2024-01-15', 233344, 42),
        (159.98, '2024-01-30', 333455, 43),
        (45.99, '2024-02-05', 433566, 44),
        (59.97, '2024-02-10', 533677, 45),
        (12.99, '2024-02-15', 633788, 46),
        (45.98, '2024-02-20', 733899, 47),
        (35.99, '2024-02-25', 833900, 48),
        (49.99, '2024-03-01', 933011, 49),
        (179.98, '2024-03-05', 103422, 50);
    end;

    commit;
    select 'Datos insertados exitosamente' as SuccessMessage;
end //

DELIMITER ;
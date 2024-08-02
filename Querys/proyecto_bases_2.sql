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



-- ---------------------------------------------------------------------------------------




-- ---------------------------------------------------------------------------------------





-- ---------------------------------------------------------------------------------------




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


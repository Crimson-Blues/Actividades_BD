----DATA INSERTION----

--Creación de clientes
INSERT INTO cliente VALUES
(1, 'Diego', 'Cardenas', 'Buena paga'),
(2, 'Lia', 'Quijano', 'Mala paga'),
(3, 'Sara', 'Mosquera', 'Rubia'),
(4, 'Manuel', 'Pedroza Gonzalez', 'Altanero'),
(5, 'Jorge', 'Martinez', 'Canson'),
(6, 'Roberto', 'Carlos', 'Cantante'),
(7, 'Julian', 'Andrade', 'Bulloso'),
(8, 'Nicolas', 'Montoya', 'Adinerado'),
(9, 'Sebastian', 'Falla', 'Callado'),
(10, 'Luna', 'Manzano', 'Cliente VIP');



--Creación de meseros
INSERT INTO mesero VALUES
(11, 'Liseth', 'Rivera', 'Castaño'),
(12, 'Juan', 'Lopez', 'Noguera'),
(13, 'Jefferson', 'Peña', 'Lopez'),
(14, 'Antonio', 'Salazar', 'Figueroa'),
(15, 'Luis', 'Quiroga', 'Sanchez'),
(16, 'Martha', 'Pinzon', 'Mejia'),
(17, 'Heriberto', 'Torbio', 'Erazo'),
(18, 'Ruben', 'Sanchez', 'Rojas'),
(19, 'Andres', 'Caicedo', 'Estela'),
(20, 'Mario', 'Vargas', 'Llosa');

--Creación de platillos
INSERT INTO platillo VALUES
(21, 'Chuleta', 25000),
(22, 'Frijolada', 35000),
(23, 'Garbanzos', 32000),
(24, 'Arroz con Pollo', 10000),
(25, 'Pasta Alfredo', 20000),
(26, 'Arroz a la marinera', 40000),
(27, 'Sancocho', 12000),
(28, 'Crema de Cebolla', 10000),
(29, 'Cereal con leche', 2000),
(30, 'Arepa con Queso', 3500);

--Creación de bebidas
INSERT INTO bebida VALUES
(31, 'Aguapanela', 2000),
(32, 'Agua', 2500),
(33, 'Coca-Cola', 5000),
(34, 'Pepsi', 4500),
(35, 'Limonada', 5000),
(36, 'Soda', 3000),
(37, 'Jugo de Naranja', 6000),
(38, 'Lulada', 7000),
(39, 'Soda Italiana', 12000),
(40, 'Jugo de Mora', 9000);

INSERT INTO mesa VALUES
(41, 4, 'Puerta Sur'),
(42, 2, 'Ventana Sur'),
(43, 4, 'Acuario'),
(44, 6, 'Ventana Este'),
(45, 2, 'Baño'),
(46, 4, 'Puerta Norte'),
(47, 4, 'Ventana Oeste'),
(48, 6, 'Esquina Noroeste'),
(49, 4, 'Centro'),
(50, 8, 'Barra'),
(10, 10, 'Segundo Piso');

--Creación de facturas
INSERT INTO factura (id_factura, fecha_factura, id_cliente, id_mesero,
id_mesa, id_platillo, id_bebida) VALUES
(51, '1991-01-01', 2, 11, 43, 27, 31),
(52, '1992-06-16', 8, 15, 50, 26, 35),
(52, '1992-08-20', 7, 16, 49, 28, 40),
(53, '1993-02-12', 2, 19, 45, 21, 38),
(54, '1993-03-20', 5, 14, 44, 25, 39),
(55, '1995-05-25', 7, 17, 43, 26, 34),
(56, '1995-06-21', 6, 15, 46, 29, 31),
(57, '1995-12-24', 2, 17, 41, 23, 36),
(58, '1996-03-14', 8, 19, 48, 27, 31),
(59, '1996-03-21', 9, 18, 46, 24, 37),
(60, '1996-05-15', 4, 13, 50, 22, 40),
(61, '2020-04-13', 1, 16, 10, 27, 36),
(62, '2021-06-20', 2, 14, 10, 24, 32);

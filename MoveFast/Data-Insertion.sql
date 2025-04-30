--------DATA INSERTION------------

--Inserta registros de sucursales en distintas ciudades
INSERT INTO sucursales(snombre, calle, carrera, ciudad) VALUES
('Costa', 'Escopeta' , '83', 'Cartago'),
('Valle', '5ta', '39', 'Cali'),
('Cauca', 'Central', '12', 'Popayan'),
('Amazonas', '1ra', '25', 'Leticia');


--Inserta manualmente el objeto sucursal eliminada
INSERT INTO sucursales(sid, snombre, calle, carrera, ciudad) VALUES
(-1, 'Eliminado', 'N/A', 'N/A', 'N/A');

--Insertar clientes, con valores no nulos
INSERT INTO clientes(clid, nombre, apellido, telefono) VALUES
(1000, 'Diego', 'Cardenas', '3225446072'),
(1005, 'Liseth', 'Rivera', '3134578643'),
(1010, 'David', NULL, NULL);

--Error al ingresar cliente con nombre nulo
INSERT INTO clientes(clid, apellido, telefono) VALUES
(1020, 'Carmona', '3122181732');


--Ingreso de vehiculos disponibles
INSERT INTO vehiculos(placa, marca, modelo, color, anio, sid) VALUES
('HZC245', 'Chevrolet', 'Twingo', 'Negro', 2020, 1),
('ABC123', 'Renault', 'KWID', 'Azul', 2024, 1),
('DHF933', 'Chevrolet', 'Onix', 'Rojo', 2016, 2),
('JJD475', 'BYD', 'Seagull', 'Blanco', 2018, 2),
('HSF176', 'Renault', 'Sail', 'Blanco', 2019, 2),
('JAH764', 'Chevrolet', 'SparkGT', 'Gris', 2014, 3),
('HAJ665', 'Renault', 'Sandero', 'Gris', 2010, 4);


--Error al insertar vehiculo con un año no valido
INSERT INTO vehiculos(placa, marca, modelo, color, anio, estado, sid) VALUES
('HAH755', 'BYD', 'YUAN UP', 'Azul', 1800, FALSE, 13);

--Error al insertar vehiculo sin placa
INSERT INTO vehiculos(marca, modelo, color, anio, estado, sid) VALUES
('BYD', 'YUAN UP', 'Azul', 2022, FALSE, 13);

--Ingreso de alquileres con fechas pasadas y estado FALSE
INSERT INTO alquileres(fecha, clid, placa, estado) VALUES
('2020-03-18', 1010, 'ABC123', FALSE),
('2021-04-21', 1005, 'HSF176', FALSE),
('2022-02-12', 1000, 'ABC123', FALSE),
('2022-05-23', 1005, 'ABC123', FALSE),
('2022-07-24', 1010, 'DHF933', FALSE),
('2023-01-01', 1000, 'DHF933', FALSE),
('2023-02-12', 1005, 'DHF933', FALSE),
('2023-03-15', 1010, 'ABC123', FALSE),
('2023-06-07', 1005, 'ABC123', FALSE);



--Ingreso de alquileres con valor DEFAULT de fecha de hoy y estado TRUE
INSERT INTO alquileres(clid, placa) VALUES
(1000, 'DHF933'),
(1000, 'JJD475'),
(1005, 'JAH764'),
(1010, 'ABC123');

--Cambiar a FALSO el estado de vehiculos con alquileres al día de hoy
UPDATE vehiculos
SET estado = FALSE
FROM alquileres
WHERE alquileres.placa = vehiculos.placa
AND alquileres.fecha = '2025-04-29';

  
--Ingreso de pagos por alquileres
INSERT INTO pagos(monto, aid) VALUES
(20000, 1),
(25000, 1),
(25000, 2),
(30000, 3),
(45000, 4),
(20000, 5),
(30000, 6),
(40000, 7),
(120000, 8),
(250000, 9),
(50000, 10),
(60000, 11);

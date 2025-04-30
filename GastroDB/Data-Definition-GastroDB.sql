----DATA DEFINITION-----

--Tabla cliente
--Representa las personas que ordenan en el restaurante
CREATE TABLE cliente(
id_cliente INT PRIMARY KEY,
nombre VARCHAR(45),
apellido VARCHAR(45),
observaciones VARCHAR(45)
);

--Tabla mesero
--Representa los trabajadores que reciben las ordenes de los comensales
CREATE TABLE mesero(
id_mesero INT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
apellido1 VARCHAR(45) NOT NULL,
apellido2 VARCHAR(45)
);

--Tabla platillo
--Representa los platillos que ofrece el restaurante
CREATE TABLE platillo(
id_platillo INT PRIMARY KEY,
nombre VARCHAR(45),
importe INT CHECK(num_Comensales > 0)
);

--Tabla bebida
--Representa las bebidas ofrecidas
CREATE TABLE bebida(
id_bebida INT PRIMARY KEY,
nombre VARCHAR(45),
importe INT CHECK(num_Comensales > 0)
);

--Tabla mesa
--Representa la mesa dónde se sientan los comensales
CREATE TABLE mesa(
id_mesa INT PRIMARY KEY,
num_Comensales INT CHECK(num_Comensales > 0),
ubicacion VARCHAR(45)
);

--Tabla factura
--Representa un registro de la orden de platillo y bebida de un cliente sentado en una mesa
CREATE TABLE factura(
id_factura INT,
fecha_factura DATE,
id_cliente INT,
id_mesero INT,
id_mesa INT,
id_platillo INT,
id_bebida INT,
FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON DELETE SET NULL,
FOREIGN KEY(id_mesero) REFERENCES mesero(id_mesero) ON DELETE SET NULL,
FOREIGN KEY(id_mesa) REFERENCES mesa(id_mesa) ON DELETE SET NULL,
FOREIGN KEY(id_platillo) REFERENCES platillo(id_platillo) ON DELETE SET NULL,
FOREIGN KEY(id_bebida) REFERENCES bebida(id_bebida) ON DELETE SET NULL
);

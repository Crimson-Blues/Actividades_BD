-----DATA DEFINITION------

--Tabla sucursales
-- Representa la sucursales de la empresa Move Fast en distintas ciudades del país
CREATE TABLE sucursales(
sid SERIAL PRIMARY KEY,
snombre VARCHAR(50),
calle VARCHAR(100) NOT NULL,
carrera VARCHAR(100) NOT NULL,
ciudad VARCHAR(100) NOT NULL
);

--Tabla vehiculos
--Representa los vehiculos de la empresa, asociados a una sucursal en particular
CREATE TABLE vehiculos(
placa VARCHAR(10) PRIMARY KEY,
marca VARCHAR(100),
modelo VARCHAR(100),
color VARCHAR(50),
anio INTEGER CHECK (anio > 1999 AND anio < 2026),
estado BOOLEAN DEFAULT TRUE,
sid INTEGER DEFAULT -1, --Valor default que referencia sede borrada
FOREIGN KEY(sid) REFERENCES sucursales(sid) ON UPDATE CASCADE, --Actualiza ID de sucursal si se actualiza
FOREIGN KEY(sid) REFERENCES sucursales(sid) ON DELETE SET DEFAULT --Al borrar sucursal se deja sid como valor nulo
);

--Tabla clientes
--Representa los clientes que alquilan un vehiculo, almacenando la información general y un telefono de contacto
CREATE TABLE clientes(
clid INTEGER PRIMARY KEY,
nombre VARCHAR(300) NOT NULL,	
apellido VARCHAR(300),
telefono VARCHAR(200)
);

--Tabla alquileres
--Representa cada transacción de alquiler involucrando un cliente y un único vehiculo
CREATE TABLE alquileres(
aid SERIAL PRIMARY KEY,
fecha DATE DEFAULT CURRENT_DATE,
clid INTEGER NOT NULL,
placa VARCHAR(10) NOT NULL,
estado BOOLEAN DEFAULT TRUE,
FOREIGN KEY(placa) REFERENCES vehiculos(placa) ON DELETE CASCADE, --Elimina alquileres al eliminarse el vehiculo
FOREIGN KEY(clid) REFERENCES clientes(clid) ON DELETE CASCADE --Elimina alquileres al eliminarse el cliente
);

--Tabla pagos
--Representa los pagos efectuados por un monto específico a una transacción de alquiler particular
CREATE TABLE pagos(
pid SERIAL PRIMARY KEY,
monto DECIMAL(10,2) NOT NULL CHECK(monto >= 0),
aid INTEGER,
FOREIGN KEY(aid) REFERENCES alquileres(aid) ON UPDATE CASCADE, --Actualiza ID de alquiler al cambiarla
FOREIGN KEY(aid) REFERENCES alquileres(aid) ON DELETE SET NULL --Al borrar el alquiler retorna el valor nulo
);

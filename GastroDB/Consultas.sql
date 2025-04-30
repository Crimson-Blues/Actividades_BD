----CONSULTAS----

--1.Nombre y apellido de clientes que consumieron un platillo específico--
SELECT cliente.nombre, cliente.apellido FROM factura
JOIN cliente ON factura.id_cliente = cliente.id_cliente
WHERE factura.id_platillo = 27;

--2.Nombre y apellido de clientes que consumieron arroz a la marinera--
SELECT cliente.nombre, cliente.apellido FROM factura
JOIN cliente ON factura.id_cliente = cliente.id_cliente
JOIN platillo ON factura.id_platillo = platillo.id_platillo
WHERE platillo.nombre = 'Arroz a la marinera';

--3. Nombre del mesero y la fecha en la que atendió una mesa 10 que se encuentra ubicada en el segundo piso del restautante.--
SELECT m.nombre AS nombre_mesero, f.fecha_factura FROM factura AS f
JOIN mesero AS m ON m.id_mesero = f.id_mesero
WHERE f.id_mesa = 10;

--4. Mostrar el nombre de los clientes junto con los nombres de las bebidas que consumieron en sus facturas.--
SELECT c.nombre AS nombre_cliente, b.nombre AS nombre_bebida FROM factura AS f
JOIN cliente AS c ON f.id_cliente = c.id_cliente
JOIN bebida AS b ON b.id_bebida = f.id_bebida;

--5.Consultar todas las facturas que incluyan platillos con un importe mayor a $300000, incluyendo el nombre del cliente y del platillo.--
SELECT f.*, c.nombre AS nombre_cliente, p.nombre AS nombre_platillo FROM factura AS f
JOIN cliente AS c ON f.id_cliente = c.id_cliente
JOIN platillo AS p ON f.id_platillo = p.id_platillo
WHERE p.importe > 30000;

--6.Listar el total de consumo (importe de platillos y bebidas) del cliente llamado Manuel Pedroza Gonzalez.--
SELECT SUM(p.importe) + SUM(b.importe) AS total FROM factura AS f
JOIN platillo AS p ON f.id_platillo = p.id_platillo
JOIN bebida AS b ON b.id_bebida = f.id_bebida
JOIN cliente AS c ON f.id_cliente = c.id_cliente
WHERE c.nombre = 'Manuel' AND c.apellido = 'Pedroza Gonzalez';

--7. Liste las mesas que han sido utilizadas al menos una vez, indicando su ubicación y el número de comensales.--
SELECT m.ubicacion, m.num_Comensales FROM factura AS f
JOIN mesa AS m ON m.id_mesa = f.id_mesa
GROUP BY m.id_mesa, m.ubicacion, m.num_comensales
HAVING COUNT(*) >= 1;

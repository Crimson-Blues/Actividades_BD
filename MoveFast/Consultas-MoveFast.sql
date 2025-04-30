--CONSULTAS----

--4. Vehiculos en una ciudad específica:
SELECT v.* FROM vehiculos AS v
JOIN sucursales AS s ON s.sid = v.sid
WHERE s.ciudad = 'Cali';

--5. Información de cliente y vehículo de alquileres activos
SELECT vehiculos.*, clientes.* FROM alquileres
JOIN vehiculos ON vehiculos.placa = alquileres.placa
JOIN clientes ON clientes.clid = alquileres.clid
WHERE alquileres.estado = TRUE;

--6. Ingresos totales por sucursal por vehiculos con más de tres alquileres
SELECT alq.placa, v.sid, SUM(p.monto) AS ingresos_totales
FROM alquileres AS alq
JOIN pagos AS p ON p.aid = alq.aid
JOIN vehiculos AS v ON v.placa = alq.placa
GROUP BY v.sid, alq.placa
HAVING COUNT(*) > 3;

--7. Vehiculos con más de 5 alquileres con subconsulta
SELECT v.* FROM vehiculos AS v
WHERE v.placa IN(
SELECT alq.placa FROM alquileres AS alq
GROUP BY alq.placa
HAVING COUNT(*) > 5
);

--8. Suma de montos de todos los pagos asociados
SELECT SUM(pagos.monto) AS Ganancia_Total
FROM pagos;

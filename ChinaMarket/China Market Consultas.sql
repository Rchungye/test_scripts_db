
--1.
SELECT DISTINCT provincia + ', ' + distrito [Ubicación]
FROM Cliente
ORDER BY provincia + ', ' + distrito

--2.
SELECT *
FROM Producto
WHERE precio_venta BETWEEN 1 AND 5;

--3.
SELECT * FROM Proveedor
WHERE provincia IN ('Chiriquí', 'Darién', 'Veraguas');

--4.
Select * from Producto
WHERE nomb_produ LIKE '%Ceremonia%'

--5.
SELECT fecha, SUM(precio_compra * cant_produCompra) [Total de compra del ño 2021]
FROM compra
WHERE fecha >= '2021-01-01' AND fecha <= '2021-12-31'
GROUP BY fecha

--6.
SELECT * FROM Producto
WHERE precio_venta > 2 AND precio_venta < 5
AND (tipo NOT LIKE 'empaquetado' OR tipo NOT LIKE 'vidrio')

--7. 
SELECT COUNT(DISTINCT c.cedula) [Entregas a domicilio],
       AVG(total_venta) [Promedio de las ventas]
FROM Cliente c join vende v ON c.cedula = v.cedula JOIN Factura_Venta f on f.num_facturaVenta = v.num_facturaVenta
WHERE tipo_venta = 'Domicilio'

--8. 
SELECT nomb_produ, MAX(precio_venta) [Precio Máximo]
FROM Producto
GROUP BY nomb_produ, precio_venta
HAVING SUM(cant_produ) > 30

--9. 
SELECT  nomb_cliente [Clientes con entregas a domicilio]
FROM Cliente c join vende v ON c.cedula = v.cedula JOIN Factura_Venta f on f.num_facturaVenta = v.num_facturaVenta
WHERE tipo_venta = 'Domicilio'

--10.
SELECT DISTINCT nombre_prov + ', ' + provincia [Dirección de Proveedores]
FROM Proveedor
ORDER BY nombre_prov  + ', ' + provincia
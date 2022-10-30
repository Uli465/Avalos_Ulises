#TP5 EJERCICIO 2

#Select fecha, id, id_cliente, id_vendedor, cantidad from pedidos ORDER BY fecha DESC; 1
#Select id, cantidad, fecha, id_cliente, id_vendedor from pedidos LIMIT 2; 2
#Select distinct id_cliente from pedidos; 3
#Select * from pedidos WHERE fecha BETWEEN '2022-01-01' and '2022-12-31' and cantidad>500; 4
#Select concat(nombre,' ', apellido) vendedores from vendedores where comisión BETWEEN '0.05' and '0.11'; 5
#Select MAX(comisión) from vendedores; 6
#Select id, apellido, nombre from clientes where cuitcuil IS NOT NULL ORDER BY apellido, nombre ASC; 7
#Select nombre from clientes WHERE nombre LIKE 'A%n' OR nombre LIKE 'P%'ORDER BY nombre ASC; 8
#Select nombre from clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC; 9
#Select distinct nombre from vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o'; 10
#Select distinct c.id, c.nombre, c.apellido from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente ORDER BY c.apellido ASC; 11
#Select * FROM pedidos p INNER JOIN clientes c ON c.id = p.id_cliente ORDER BY c.nombre, c.apellido, c.cuitcuil, c.ciudad, c.categorÍa ASC; 12
#Select * FROM pedidos p INNER JOIN vendedores v ON v.id = p.id_vendedor ORDER BY v.nombre, v.apellido, v.cuitcuil, v.comisión ASC; 13
#Select c.*, p.*, v.* FROM clientes c INNER JOIN pedidos p ON c.id = p.id_cliente INNER JOIN vendedores v ON v.id = p.id; 14
#Select * from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente WHERE p.fecha BETWEEN '2022-01-01' and '2022-12-31' and p.cantidad BETWEEN '300' and '1000'; 15
#Select v.nombre, v.apellido from vendedores v INNER JOIN pedidos p ON v.id = p.id_vendedor INNER JOIN clientes c ON c.id = p.id_cliente WHERE c.nombre='María' and c.apellido='Santana'; 16
#Select c.nombre from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente INNER JOIN vendedores v ON v.id = p.id_vendedor WHERE v.nombre='Daniel' and v.apellido='Saez'; 17
#Select * from clientes c LEFT JOIN pedidos p ON c.id = p.id_cliente ORDER  BY  c.apellido, c.nombre ASC; 18
#Select * from vendedores v LEFT JOIN pedidos p ON v.id = p.id_vendedor ORDER  BY  v.apellido, v.nombre ASC; 19 
#Select * from clientes c LEFT JOIN pedidos p ON c.id = p.id_cliente WHERE p.id_cliente IS NULL; 20
#Select * from vendedores v LEFT JOIN pedidos p ON v.id = p.id_vendedor WHERE p.id_cliente IS NULL; 21
#SELECT  c.apellido, c.nombre from clientes c LEFT JOIN pedidos p ON c.id = p.id_cliente WHERE p.id_cliente IS NULL  UNION  
#SELECT  v.apellido, v.nombre from vendedores v LEFT JOIN pedidos p ON v.id = p.id_vendedor WHERE p.id_vendedor IS NULL; 22 
#Select sum(cantidad) from pedidos; 23
#Select AVG(cantidad) from pedidos; 24
#Select COUNT(distinct id_vendedor) vendedores FROM pedidos; 25
#Select COUNT(*) from clientes; 26
#Select MAX(cantidad) from pedidos; 27
#Select MIN(cantidad) from pedidos; 28
#Select ciudad, MAX(categoría) from clientes GROUP BY ciudad; 29
#Select c.id, c.nombre, c.apellido, p.fecha, MAX(p.cantidad) from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente GROUP BY c.id, p.fecha; 30
#SELECT c.id, c.nombre, c.apellido, p.fecha, MAX(p.cantidad) from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente 
#GROUP BY c.id, p.fecha HAVING MAX(p.cantidad) > 2000; 31
#Select  v.id,  v.nombre, v.apellido, MAX(p.cantidad) from pedidos p RIGHT JOIN vendedores v ON p.id_vendedor = v.id 
#WHERE p.fecha = ' 2021-08-17' GROUP BY v.id; 32
#Select c.id, c.nombre, c.apellido, COUNT(p.id) from clientes c LEFT JOIN pedidos p ON c.id = p.id_cliente GROUP BY c.id; 33
#Select c.id, c.nombre, c.apellido, COUNT(p.id) from clientes c LEFT JOIN pedidos p ON c.id = p.id_cliente WHERE YEAR(p.fecha) = 2020 GROUP BY c.id; 34
#Select YEAR(fecha) año, MAX(cantidad) cantidad from pedidos GROUP BY YEAR(fecha) ;35
#Select YEAR(fecha) año, COUNT(cantidad) cantidad from pedidos GROUP BY YEAR(fecha) ;36
#Select * from pedidos WHERE id_cliente = (Select id from clientes WHERE nombre = 'Adela' and apellido = 'Salas'); 37
#Select COUNT(*) from pedidos WHERE id_vendedor = (Select id from vendedores WHERE nombre = 'Daniel' and apellido = 'Sáez'); 38
#Select * from clientes WHERE id = (Select id_cliente from pedidos WHERE cantidad = (Select MAX(cantidad) from pedidos WHERE YEAR(fecha) = 2020)); 39
#Select fecha, cantidad from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente WHERE c.nombre = 'Pepe' and apellido = 'Ruiz' AND p.cantidad = (SELECT MIN(cantidad) from clientes c INNER JOIN pedidos p ON c.id = p.id_cliente   
#WHERE c.nombre = 'Pepe' and apellido = 'Ruiz'); 40
#Select * from clientes WHERE id NOT IN (Select id_cliente from pedidos); 41
#Select * from vendedores WHERE id NOT IN (Select id_vendedor from pedidos); 42
#Select * from clientes c WHERE NOT EXISTS (Select id_cliente from pedidos p WHERE c.id = p.id_cliente); 43
#Select * from vendedores v WHERE  NOT  EXISTS  (Select  id_vendedor  FROM  pedidos p WHERE v.id = p.id_vendedor); 44

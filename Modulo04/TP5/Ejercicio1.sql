/*DROP DATABASE IF EXISTS sistema;
CREATE DATABASE sistema CHARACTER SET utf8mb4;
USE sistemadepartamentos;
CREATE TABLE departamentos (
iddepartamento INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado  boolean NOT NULL
);
CREATE TABLE empleados (
idemplaedo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
id_departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (id_departamento) REFERENCES departamentos(iddepartamento)
);
INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL, false);
INSERT INTO empleados VALUES(13, '20-38265162-1', 'Juan', 'Antonio', NULL, true); */

#Select apellido from empleados  1
#Select distinct apellido from empleados 2
# show columns from empleados   3
# Select apellido Apellidos , nombre Nombres from empleados 4
# Select cuil_cuit from empleados 5
# Select concat(apellido, ' ', nombre) from Empleados; 6
# Select UPPER( concat(apellido, ' ', nombre)) Empleados from empleados; 7
# Select LOWER( concat(apellido, ' ', nombre)) Empleados from empleados; 8
# Select nombre, presupuesto from departamentos where presupuesto order by presupuesto ASC; 9
# Select nombre from departamentos order by nombre ASC; 10. 
# Select nombre from departamentos order by nombre DESC; 11. 
# Select apellido, nombre from empleados order by apellido, nombre ASC; 12. 
# Select nombre, presupuesto from departamentos ORDER BY presupuesto DESC limit 3; 13
# Select nombre, presupuesto from departamentos ORDER BY presupuesto ASC limit 3; 14
# Select nombre, presupuesto from departamentos WHERE (presupuesto > 150000) or (presupuesto = 150000); 15
# Select nombre, presupuesto from departamentos WHERE (presupuesto >= 100000) and (presupuesto <= 200000); 16
# Select nombre, presupuesto from departamentos WHERE (presupuesto < 100000) or (presupuesto > 200000); 17
# Select nombre, presupuesto from departamentos WHERE presupuesto BETWEEN 100000 and 200000; 18 
# Select nombre, presupuesto from departamentos WHERE presupuesto  NOT BETWEEN 100000 and 200000; 19 
# Select * from empleados e INNER JOIN departamentos dp ON dp.iddepartamento = e.idemplaedo; 20
#Select dp.nombre, e.apellido, e.nombre from empleados e INNER JOIN departamentos dp ON dp.iddepartamento = e.idemplaedo ORDER BY dp.nombre, e.apellido, e.nombre ASC; 21 
#SELECT DISTINCT dp.iddepartamento, dp.nombre FROM departamentos dp INNER JOIN empleados e ON dp.iddepartamento = e.idemplaedo WHERE dp.iddepartamento IS NOT NULL; 22
#Select dp.nombre FROM departamentos dp INNER JOIN empleados e ON dp.iddepartamento = e.idemplaedo WHERE e.cuil_cuit = "27-38382980-3" ; 23
#Select dp.nombre FROM departamentos dp INNER JOIN empleados e ON dp.iddepartamento = e.idemplaedo WHERE e.nombre = "Pepe" and e.apellido="Ruiz"; 24
#Select e.cuil_cuit, e.apellido, e.nombre from empleados e INNER JOIN departamentos dp ON dp.iddepartamento = e.idemplaedo WHERE dp.nombre = "I+D" ORDER BY e.cuil_cuit, e.apellido, e.nombre ASC; 25
#Select e.cuil_cuit, e.apellido, e.nombre from empleados e INNER JOIN departamentos dp ON dp.iddepartamento = e.idemplaedo WHERE dp.nombre = "I+D"  or dp.nombre = "Sistemas" or dp.nombre = "Contabilidad" ORDER BY e.cuil_cuit, e.apellido, e.nombre ASC; 26
#Select e.nombre from empleados e INNER JOIN departamentos dp ON dp.iddepartamento = e.idemplaedo WHERE dp.presupuesto NOT BETWEEN 100000 AND 200000; 27   

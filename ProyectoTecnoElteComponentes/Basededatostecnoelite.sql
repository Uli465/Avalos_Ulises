/*CREATE TABLE Usuarios (
idusuario INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
Estado VARCHAR(2) NOT NULL,
nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(50) NOT NULL,
Telefono VARCHAR(40) NOT NULL,
Direccion VARCHAR(40) NOT NULL,
Ciudad VARCHAR(30) NOT NULL,
Departamento VARCHAR(40) NOT NULL,
CodigoPostal VARCHAR(10) NOT NULL,
Pais VARCHAR(40) NOT NULL,
Email VARCHAR(50) NOT NULL,
Fecha_creacion date NOT NULL,
Fecha_modificacion date
);

CREATE TABLE Roles (
idroles INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre VARCHAR(50) NOT NULL,
id_usuario INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES Usuarios(idusuario)
);

CREATE TABLE usuario_roles (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_usuario INT UNSIGNED,
id_rol INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES Usuarios(idusuario),
FOREIGN KEY (id_rol) REFERENCES Roles(idroles)
);

CREATE TABLE categorias (
idcategoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre VARCHAR(50) NOT NULL,
Descripcion VARCHAR(200) NOT NULL,
Imagen longblob
);

CREATE TABLE Productos(
idproducto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre VARCHAR(50) NOT NULL,
Descripcion VARCHAR(200) NOT NULL,
Cantidad Bigint NOT NULL,
Precio Int NOT NULL,
Imagen longblob,
id_categoria INT UNSIGNED,
FOREIGN KEY (id_categoria) REFERENCES categorias(idcategoria)
);

CREATE TABLE categoria_producto (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_categoria INT UNSIGNED,
id_producto INT UNSIGNED,
FOREIGN KEY (id_categoria) REFERENCES categorias(idcategoria),
FOREIGN KEY (id_producto) REFERENCES Productos(idproducto)
);
*/
CREATE TABLE Pedidos (
idpedido INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
fechapedido date NOT NULL,
fechaentrega date NOT NULL,
Estado VARCHAR(20),
cantidad int NOT NULL,
Monto int NOT NULL,
id_usuario INT UNSIGNED,
id_producto INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES Usuarios(idusuario),
FOREIGN KEY (id_producto) REFERENCES Productos(idproducto)
); 

CREATE TABLE Pagos (
idpago INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
numerofactura INT NOT NULL,
fechapago date,
total INT NOT NULL,
id_usuario INT UNSIGNED,
id_pedido INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES Usuarios(idusuario),
FOREIGN KEY (id_pedido) REFERENCES Pedidos(idpedido)
);

CREATE TABLE usuario_pedido_pago (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_usuario INT UNSIGNED,
id_pedido INT UNSIGNED,
id_pago INT UNSIGNED,
FOREIGN KEY (id_usuario) REFERENCES Usuarios(idusuario),
FOREIGN KEY (id_pedido) REFERENCES Pedidos(idpedido),
FOREIGN KEY (id_pago) REFERENCES Pagos(idpago)
);



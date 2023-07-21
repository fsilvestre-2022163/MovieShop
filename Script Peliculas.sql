/*
	Fecha de creación: 05-07-2023
*/

drop database if exists DBPeliculasIN5AV;

create database DBPeliculasIN5AV;

use DBPeliculasIN5AV;

create table Usuarios(
	idUsuario int not null auto_increment,
    nombreUsuario varchar(150) not null,
    apellidoUsuario varchar(150) not null,
    usuario varchar(150) not null,
    pass varchar(150) not null,
    email varchar(150) not null,
    fotoPerfil Blob,
	primary key PK_idUsuario(idUsuario)
);



create table Pago(
	idPago int not null auto_increment,
    cantidadAPagar double not null,
    tipoTargeta varchar(150) not null,
    tipoPago varchar(150) not null,
    fechaPago date not null,
    idUsuario int not null,
    primary key PK_idPago(idPago),
    constraint FK_Pago_Usuarios foreign key(idUsuario)
		references Usuarios(idUsuario)
);

create table TipoTarjeta(
	idTipoTarjeta int not null auto_increment,
    tipoTarjeta varchar(30),
    primary key PK_idTipoTarjeta(idTipoTarjeta)
);


create table Proveedores(
	idProveedor int not null auto_increment,
    nombreProveedor varchar(150) not null,
    telefonoProveedor varchar(150) not null,
    email varchar(150),
    primary key PK_idProveedor(idProveedor)
);

create table Producto(
	idProducto int not null auto_increment,
    nombreProducto varchar(150) not null,
	genero varchar(150) not null,
    categoria varchar(150) not null,
    precio double not null,
    duracion varchar(150) not null,
    sinopsis varchar(250) not null,
    portada Blob,
    idProveedor int not null,
    primary key PK_idProducto(idProducto),
    constraint FK_Producto_Proveedores foreign key (idProveedor)
		references Proveedores(idProveedor)
);

create table Cesta(
	idCesta int not null auto_increment,
    cantidad int not null,
    fechaProducto date not null,
    subtotal double not null,
    idUsuario int not null,
    primary key PK_idCesta(idCesta),
    constraint FK_Cesta_Usuarios foreign key(idUsuario)
		references Usuarios(idUsuario)
);

create table Resena(
	idResena int not null auto_increment,
    fechaValoracion date not null,
    calificacion int,    
    resena varchar(250),
    idUsuario int not null,
    idProducto int not null,
    primary key PK_idResena(idResena),
    constraint FK_Resena_Usuarios foreign key(idUsuario)
		references Usuarios(idUsuario),
	constraint FK_Resena_Producto foreign key(idProducto)
		references Producto(idProducto)
);

create table ServicioCliente(
	idServicio int not null auto_increment,
    descripcion varchar(250),
    idUsuario int not null,
    idProducto int not null,
    primary key PK_idServicio(idServicio),
    constraint FK_ServicioCliente_Usuarios foreign key(idUsuario)
		references Usuarios(idUsuario),
	constraint FK_ServicioCliente_Producto foreign key(idProducto)
		references Producto(idProducto)
);

create table Promocion(
	idPromocion int not null auto_increment,
    porcentajePromocion int not null,
    fechaInicio datetime not null,
    fechaFinal datetime not null,
    primary key PK_idPromocion(idPromocion)
);

create table DetallePromocion(
	idDetallePromocion int not null auto_increment,
    precioFinal double not null,
    idPromocion int not null,
    idProducto int not null,
    primary key PK_idDetallePromocion(idDetallePromocion),
    constraint FK_DetallePromocion_Promocion foreign key(idPromocion)
		references Promocion(idPromocion),
	constraint FK_DetallePromocion_Producto foreign key(idProducto)
		references Producto(idProducto)
);

create table DetallePago(
	idDetallePago int not null auto_increment,
    cantidad int not null,
    idProducto int not null,
    idPago int not null,
    idCesta int not null,
    primary key PK_idDetallePago(idDetallePago),
    constraint FK_DetallePago_Producto foreign key(idProducto)
		references Producto (idProducto),
	constraint FK_DetallePago_Pago foreign key(idPago)
		references Pago(idPago),
	constraint FK_DetallePago_Cesta foreign key(idCesta)
		references Cesta(idCesta)
);

-- ------------------ Ingreso de datos ----------------------------

Insert into Usuarios (nombreUsuario, apellidoUsuario, usuario, pass, email)
	values ('James Brian', 'Sipac Sipac', 'Sipac15', 'SipacSipac', 'rsipac-2022086@kinal.edu.gt');
Insert into Usuarios (nombreUsuario, apellidoUsuario, usuario, pass, email)
	values ('Sergio', 'Tepaz', 'TePaz', 'SSergio', 'stepaz-2022164@kinal.edu.gt');    
    
-- ----------------------------------------------------------------

insert into TipoTarjeta(tipoTarjeta)
	values('Debito');
insert into TipoTarjeta(tipoTarjeta)
	values('Credito');
insert into TipoTarjeta(tipoTarjeta)
	values('Regalo');
    
-- ----------------------------------------------------------------

Insert into Pago (cantidadAPagar, tipoTargeta, tipoPago, fechaPago, idUsuario)
	values(100.55, 'Debito', 'Paypal', '2023-03-25', 1);
Insert into Pago (cantidadAPagar, tipoTargeta, tipoPago, fechaPago, idUsuario)
	values(250.00, 'Debito', 'Paypal', '2023-06-09', 2);
    
-- ------------------------------------------------------------------

Insert into Proveedores (nombreProveedor, telefonoProveedor, email)
	values('Sony-Columbia', '87957894', 'spe_privacy@spe.sony.com');
Insert into Proveedores (nombreProveedor, telefonoProveedor, email)
	values('Disney', '9394357', 'disneyworld.com/dine');
    
-- -------------------------------------------------------------------

Insert into Producto (nombreProducto, genero, categoria, precio, duracion, sinopsis, idProveedor)
	value('Spider-Man: Into the Spider-Verse', 'Animación, Superhéroe', 'Acción, ciencia Ficción', 100.55, '2h 16m',
    'Spider-Man: Into the Spider-Verse presenta a Miles Morales, un adolescente de Brooklyn, y las ilimitadas posibilidades 
    del Universo Spider-Man, donde más de uno puede llevar la máscara.', 1);
Insert into Producto (nombreProducto, genero, categoria, precio, duracion, sinopsis, idProveedor)
	value('Avatar: the way of water', 'Accion, drama, aventura, ciencia ficción', 'Thriller, Fantasia', 250.00, '3h 12m', 
    'Jake Sully y Ney tiri han formado una familia y hacen todo lo posible por permanecer juntos. 
    Sin embargo, deben abandonar su hogar y explorar las regiones de Pandora cuando una antigua amenaza reaparece.', 2);

-- ---------------------------------------------------------------------

Insert into Cesta (cantidad, fechaProducto, subtotal, idUsuario)
	values(1, '2023-03-25', 100.55, 1);
Insert into Cesta (cantidad, fechaProducto, subtotal, idUsuario)
	values(1, '2023-05-09', 250.00, 2);
    
-- ---------------------------------------------------------------------

Insert into Resena (fechaValoracion, calificacion, resena, idUsuario, idProducto)
	values('2020-07-15', 5, 'Una pelicula que realmente trata de manera inteligente a su audiencia, su historia es genial sin dejar de lado
     la animación y el arte que tiene, es una pelicula que vale totalmente la pena', 1, 1);
Insert into Resena (fechaValoracion, calificacion, resena, idUsuario, idProducto)
	values('2023-01-20', 4, 'Una pelicula que es buena aunque no supera a su antesesora, aunque con mayor presupuesto, el CGI de está
    entrega deja mucho que desear, llegando a parecer un videojuego en muchos momento, pero es muy disfrutable', 2, 2);

-- ---------------------------------------------------------------------

Insert into ServicioCliente (descripcion, idUsuario, idProducto)
	values('La pelicula no se me fue entregada en el plazo que establecio la plataforma', 1, 1);
Insert into ServicioCliente (descripcion, idUsuario, idProducto)
	values('El paquete en el que venía la pelicula llego dañado', 2, 2);

-- -------------------------------------------------------------------

Insert into Promocion (porcentajePromocion, fechaInicio, fechaFinal)
	values(25, '2023-06-03', '2023-06-17');
Insert into Promocion (porcentajePromocion, fechaInicio, fechaFinal)
	values(10, '2023-03-10', '2023-03-24');

-- -------------------------------------------------------------------

Insert into DetallePromocion (precioFinal, idPromocion, idProducto)
	values(75.41, 1, 1);
Insert into DetallePromocion (precioFinal, idPromocion, idProducto)
	values(225.00, 1, 1);

-- ---------------------------------------------------------------------

Insert into DetallePago(cantidad, idProducto, idPago, idCesta)
	values(1, 1, 1, 1);
Insert into DetallePago(cantidad, idProducto, idPago, idCesta)
	values(1, 2, 2, 2);


select * from TipoTarjeta;
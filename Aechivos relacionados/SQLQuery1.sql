drop StokDepot_StammGomez
go
create database StokDepot_StammGomez
use StokDepot_StammGomez
go
create table Marca(
	ID int not null primary key identity(1,1),
	NOMBRE varchar (30) NOT NULL
)
go

create table Categoria(
	ID int not null primary key identity(1,1),
	NOMBRECATEGORIA varchar (30)
)
go
create table Presentacion(
	ID int not null primary key identity(1,1),
	DESCRIPCION varchar(50)
)
go
create table Productos(
	ID int not null primary key identity(1,1),
	IDMarca int foreign key references Marca(ID),
	IDCategoria int foreign key references Categoria(ID),
	IDPresentacion int foreign key references Presentacion(ID),
	DESCRIPCION varchar(50) not null,
	PESO int not null check(PESO > 0),
	PRECIO_UNITARIO money not null check(PRECIO_UNITARIO > 0.00),
	FECHA_VTO date not null check(FECHA_VTO > GETDATE()),
	URL_IMAGEN varchar(200) null,
	ESTADO bit not null
)
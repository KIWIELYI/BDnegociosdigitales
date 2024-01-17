-- SQL LDD
-- Crear la base de BDEntornosVIP

CREATE DATABASE BDentornosVIP
go

-- Cambiar de base de datos
USE BDentornosVIP
go

-- Crear la tabla Categoria
CREATE TABLE tabcategoria(
CategoriaID int not null,
descripcion varchar (100) not null,
constraint pk_tabcategoria 
primary key (CategoriaID),
constraint unique_descripcion
unique(descripcion)
)
go

create table TabProducto(
productoID int not null,
nombreP varchar(50) not null,
precioP decimal(10,2) not null,
existenciaP int not null,
categoriaID int not null,
constraint pk_TabProducto
primary key(productoID),
constraint unique_nombreP
unique (nombreP),
constraint chk_precio
check (precioP>0.0 and precioP <=10000),
constraint chk_existencia
check(existenciaP>=0),
constraint fk_TabProducto_tabcategoria
foreign key(categoriaID)
references tabcategoria(categoriaID)
)
create database Examen
use Examen

create table Clientes(DNI integer identity(1,1) primary key,Apellidos varchar(30)not null,Nombre varchar(20)not null, Direccion varchar(50),CP integer, Poblacion varchar(20),Telefono varchar(10)not null,Telefono1 varchar(10))
create table Coches(Matricula varchar(10)primary key,DNI_Propietario integer,Marca varchar(20) not null, Modelo varchar(20)not null, Color varchar(20), Km integer, Foreign Key(DNI_Propietario) references Clientes(DNI))
create table Reparaciones(Numero_Reparaciones integer identity(1,1)primary key, Matricula varchar(10),Descripcion varchar(50)not null,Fecha_Entrega date not null, Fecha_Salida date, Horas time, Foreign Key (Matricula) references Coches(Matricula))
create table Piezas(Referencia integer identity(1,1)primary key,Descripcion varchar(50) not null, Precio integer not null,Stock integer not null)
create table DetalleReparacion(Numero_Reparaciones integer,Referencia integer, Unidades integer, Foreign Key(Numero_Reparaciones) references Reparaciones(Numero_Reparaciones),Foreign key(Referencia) references Piezas(Referencia))
create table Nota(id integer primary key identity(1,1),Name varchar(50),ContentType nvarchar(200),Data varbinary(MAX))


insert into Clientes values('Gozales','Juan','calle del chorizo #123',36000,'Guanajuato','47318883','476666759')
insert into Clientes values('Lopez','Jose','calle del jamon #43',36080,'Guanajuato','47555504','4731898856')
insert into Clientes values('Gutierres','Ramon','zona centro',36040,'Guanajuato','84475234','58581234444')



insert into Reparaciones values('ABC','Cambio de chofer','05/07/2018','07/07/2018','4:30')
insert into Reparaciones values('DEF','Cambio de luces','6/04/2018','17/04/2018','1:30')
insert into Reparaciones values('GHI','Reparacion de caja de velocidades','4/012/2017','9/09/2018','9:00')

insert into Piezas values('Matina',600,40)
insert into Piezas values('Luces sfton',9000,3)
insert into Piezas values('Cja box',1670,200)

insert into DetalleReparacion values(1,6,5)
insert into DetalleReparacion values(2,2,1)
insert into DetalleReparacion values(3,3,5)

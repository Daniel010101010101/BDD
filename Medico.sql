create database hospital2;

use hospital2;

/*Paciente*/
create table sexo(
id_sexo integer NOT NULL identity (1,1) primary key,
N_Sexo varchar(10)NOT NULL,
);

create table telefono(
id_telefono integer NOT NULL identity (1,1) primary key,
Telefono int not null,
Codigo_area int not null
);

create table direccion(
id_direccion int NOT NULL identity (1,1) primary key,
Código_postal int,
Domicilio varchar(50)NOT NULL,
N_Provincia varchar(10)NOT NULL,
)
create table Paciente(
id_Número_historial_clínico integer NOT NULL identity (1,1) primary key,
Nombre_Paciente varchar(50)NOT NULL,
Apellido_Paciente varchar(50)NOT NULL,
NumeroSeguridadSocial int Not Null,
ObservacionesPaciente varchar(500) NOT NULL,
id_sexo integer foreign key (id_sexo) references Sexo(id_sexo) NOT NULL,
id_telefono integer foreign key (id_telefono) references Telefono(id_telefono) NOT NULL,
id_direccion int foreign key (id_direccion) references direccion(id_direccion) NOT NULL
);

/*MEDICO*/
Create table EspecialidadMedico(
idColegiado integer NOT NULL identity (1,1) primary key,
Especialidad varchar(50),
)
create table Cargo(
idArea integer NOT NULL identity (1,1) primary key,
cargo varchar
)
create table Medicos(
Código_identificación_médico integer NOT NULL identity (1,1) primary key,
Nombre varchar(50)NOT NULL,
Apellidos varchar(50)NOT NULL,
idColegiado integer foreign key (idColegiado) references EspecialidadMedico(idColegiado)NOT NULL,
idArea integer foreign key (idArea) references Cargo(idArea) NOT NULL,
);

/*INGRESOS*/
 create table Planta(
id_Numero_Cama integer NOT NULL identity (1,1) primary key,
Numero_Planta integer NOT NULL
)
 create table Ingresos(
Id_Ingresos integer NOT NULL identity (1,1) primary key,
Procedencia varchar(50)NOT NULL,
Fecha_ingreso Date not null,
ObservacionesIngreso varchar(100)NOT NULL,
Código_identificación_médico integer foreign key (Código_identificación_médico) references Medicos(Código_identificación_médico) NOT NULL,
id_Numero_Cama integer foreign key (id_Numero_Cama) references Planta(id_Numero_Cama)
);


/*SEXO*/

insert into sexo (N_Sexo) values ('masculino')
insert into sexo (N_Sexo) values ('femenino')

/*Telefono*/

insert into telefono(Codigo_area,Telefono) values (503,5782382)
insert into telefono(Codigo_area,Telefono) values (503,5782382)
insert into telefono(Codigo_area,Telefono) values (503,5782382)
insert into telefono(Codigo_area,Telefono) values (503,5782382)
insert into telefono(Codigo_area,Telefono) values (503,5742382)
insert into telefono(Codigo_area,Telefono) values (503,5762382)
insert into telefono(Codigo_area,Telefono) values (503,5722382)
insert into telefono(Codigo_area,Telefono) values (503,5782382)
insert into telefono(Codigo_area,Telefono) values (503,5792382)
insert into telefono(Codigo_area,Telefono) values (503,5702382)
/*direccion*/

insert into direccion(Código_postal,Domicilio,N_Provincia) values (394884,'Guazapa','San Salvador')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (39422234,'Aguilares','San Salvador')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (774224,'Amayo','Chalatenango')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (8833484,'Apopa','San Salvador')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (774884,'Las cañas','San Salvador')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (67422234,'Avenida','Barcelona')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (398824,'San Miguel','Managua')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (3966484,'Mexicanos','San Salvador')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (394484,'La Quebrada','CDMX')
insert into direccion(Código_postal,Domicilio,N_Provincia) values (39562234,'Nuevo Leon','Monterrey')

/*PACIENTE*/

insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Juan','Juarez',10,'Ninguna',1,1,1)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Daniel','Tejada',11,'Alergia al polen',1,2,2)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Nestor','Zamora',12,'Gripa',1,3,3)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Marcos','Vides',13,'Ninguna',1,4,4)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Franklin','Solorzano',14,'Ninguna',1,5,5)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Pablo','Juarez',15,'Gripa',1,6,6)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Luis','Martinez',16,'Ninguna',1,7,7)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Alexis','Lopez',17,'Migraña',1,8,8)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Jose','Aguilar',18,'Ninguna',1,9,9)
insert into Paciente(Nombre_Paciente,Apellido_Paciente,NumeroSeguridadSocial,ObservacionesPaciente,id_sexo,id_telefono,id_direccion)
values ('Carlos','Avelar',19,'Ninguna',1,10,10)

select * from Paciente;
select * from direccion;
select * from telefono;

/*Especialidad*/

insert into EspecialidadMedico(Especialidad) values ('Odontologo')
insert into EspecialidadMedico(Especialidad) values ('psiquiatra')
insert into EspecialidadMedico(Especialidad) values ('pediatra')
insert into EspecialidadMedico(Especialidad) values ('General')
insert into EspecialidadMedico(Especialidad) values ('Oculista')
insert into EspecialidadMedico(Especialidad) values ('Ginecologo')

select * from EspecialidadMedico

/*Cargo*/
insert into Cargo(cargo) values ('Odontologia')
insert into Cargo(cargo) values ('Psiquiatria')
insert into Cargo(cargo) values ('Pediatria')
insert into Cargo(cargo) values ('Chequeo')
insert into Cargo(cargo) values ('Vista')
insert into Cargo(cargo) values ('Ginecologia')



/*MEDICO*/
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Juan','Martinez',1,1)
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Antonio','Tejada',2,2)
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Wilber','Sanchez',3,3)
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Eric','Hernandez',4,4)
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Samuel','Flores',5,5)
insert into Medicos(Nombre,Apellidos,idColegiado,idArea)
values ('Miguel','Sanchez',6,6)
select * from Medicos
 /*Ingreso*/

insert into Planta(Numero_Planta) values (1)
insert into Planta(Numero_Planta) values (2)
insert into Planta(Numero_Planta) values (3)
insert into Planta(Numero_Planta) values (4)
insert into Planta(Numero_Planta) values (5)
insert into Planta(Numero_Planta) values (6)

/*Ingreso*/

insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',30/02/2021,'Fractura',1,1)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('San Salvador',11/02/2021,'Accidente',2,2)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',2/02/2021,'Fractura',3,3)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',3/02/2021,'Lesion',4,4)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',20/02/2021,'Embarazo',5,5)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',3/02/2021,'Fractura',6,6)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',4/02/2021,'Lesion',4,7)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',5/02/2021,'accidente',3,8)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',6/02/2021,'Fractura',4,9)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',7/02/2021,'Lesion',1,10)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',8/02/2021,'Fractura',2,11)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',9/02/2021,'Embarazo',3,12)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',9/02/2021,'Fractura',4,13)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',10/02/2021,'Accidente',2,14)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',10/02/2021,'Fractura',1,15)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',11/02/2021,'Cirugia',1,6)
insert into Ingresos(Procedencia,Fecha_ingreso,ObservacionesIngreso,Código_identificación_médico,id_Numero_Cama)
values ('Chalatenango',22/02/2021,'Lesion',2,5)

select * from Medicos;
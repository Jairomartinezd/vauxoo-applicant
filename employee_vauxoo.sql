-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

create database employee_employee template template1;

\c employee_employee

create schema e;

create table e.employee{
	id varchar(10) primary key not null,
	first_name varchar(50),
	last_name varchar(50)
};
create table e.employee_department{
	id varchar(10),
	name varchar(50),
	description varchar(50)
};
create table e.esta{
	id_em varchar(10) not null,
	id_dep varchar (10) not null,
	foreign key(id_em) references e.employee
	on delete cascade
	on update cascade,
	foreign key(id_dep) references e.employee_department
	on delete cascade
	on update cascade,
	primary key(id_em,id_dep)
};


insert into e.employee(id,first_name,last_name)
values('AB10107845','Juan','Gomez');
insert into e.employee(id,first_name,last_name)
values('AB10107945','Jairo','Martinez');
insert into e.employee(id,first_name,last_name)
values('AB10107875','Kelly','Perez');
insert into e.employee(id,first_name,last_name)
values('AB10127845','Stefanny','Olivero');

insert into e.employee_department(id,name,description)
values('10345','RRHH','Recursos Humanos');
insert into e.employee_department(id,name,description)
values('10346','Logistica','Organizacion de Eventos');
insert into e.employee_department(id,name,description)
values('10347','Marketing','Venta de Productos y Publicidad');
insert into e.employee_department(id,name,description)
values('10348','Medios','Publicidad en Radio y TV');
insert into e.employee_department(id,name,description)
values('10439','Eventos','Eventos Nacionales');
insert into e.employee_department(id,name,description)
values('10440','Produccion','Control de Calidad');

insert into e.esta(id_e,id_dep)
values('AB10107845','10345');
insert into e.esta(id,name,description)
values('AB10107945','10345');
insert into e.esta(id,name,description)
values('AB10107875','10440');
insert into e.esta(id,name,description)
values('AB10127845','10347');


-- ...

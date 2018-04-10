use master
go
drop database prueba_1
create database prueba_1
go
use prueba_1
go

create table a(
	nombre varchar(20),
	apellido varchar(20),
	edad int,
)
go

insert into a values('a','a',22)
insert into a values('a','a',22)
insert into a values('b','a',22)
insert into a values('b','a',22)
insert into a values('a','a',22)
insert into a values('a','a',22)
insert into a values('b','a',22)
insert into a values('a','a',22)
insert into a values('a','a',22)

insert into a values('c','a',22)

insert into a values('c','a',22)
insert into a values('d','a',22)

go



create table b(
	nombre varchar(20),
	apellido varchar(20),
	edad int,
)
go

insert into b select DISTINCT * from a

delete from a
insert into a select DISTINCT * from b

select * from a
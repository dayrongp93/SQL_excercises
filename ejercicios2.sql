create database empleados;
use empleados;
create table departamento(
	codigo int unsigned auto_increment,
    nombre varchar(100) not null,
    presupuesto double unsigned not null,
    gastos double unsigned not null,
    primary key (codigo)
);

create table empleado(
	codigo int unsigned auto_increment,
    nif varchar(9) not null unique,
    nombre varchar(100) not null,
    apellido1 varchar(100) not null,
    apellido2 varchar(100),
    codigo_departamento int unsigned,
    primary key (codigo),
    foreign key (codigo_departamento) references departamento(codigo)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);

-- 1
select apellido1 from empleado limit 1;

-- 2
select distinct apellido1 from empleado limit 1;

-- 3
select * from empleado;

-- 4
select nombre, apellido1, apellido2 from empleado;

-- 5
select codigo_departamento from empleado;

-- 6
select distinct codigo_departamento from empleado;

-- 7
select concat(nombre, ' ', apellido1, ' ', apellido2) from empleado;

-- 8
select upper(concat(nombre, ' ', apellido1, ' ', apellido2)) from empleado; 

-- 9
select lower(concat(nombre, ' ', apellido1, ' ', apellido2)) from empleado; 

-- 10
select codigo_departamento, substring(nif,1,8), substring(nif,9,1) from empleado;

-- 11
select nombre, presupuesto - gastos as 'Presupuesto actual' from departamento;

-- 12
select nombre, presupuesto - gastos as 'Presupuesto actual' from departamento 
order by presupuesto - gastos asc;

-- 13
select nombre from departamento order by nombre asc;

-- 14
select nombre from departamento order by nombre desc;

-- 15
select apellido1, apellido2, nombre from empleado order by apellido1 asc, apellido2 asc, nombre asc;

-- 16
select nombre, presupuesto from departamento order by presupuesto desc limit 3;

-- 17
select nombre, presupuesto from departamento order by presupuesto asc limit 3;

-- 18
select nombre, gastos from departamento order by gastos desc limit 2;

-- 19
select nombre, gastos from departamento order by gastos asc limit 2;

-- 20
select * from empleado limit 2,5;

-- 21
select nombre, presupuesto from departamento where presupuesto >= 150000;

-- 22
select nombre, gastos from departamento where gastos <= 5000;

-- 23
select nombre, presupuesto from departamento where presupuesto >= 100000 and presupuesto <= 200000;

-- 24
select nombre, presupuesto from departamento where presupuesto <= 100000 or presupuesto >= 200000;

-- 25
select nombre, presupuesto from departamento where presupuesto between 100000 and 200000;

-- 26
select nombre, presupuesto from departamento where presupuesto not between 100000 and 200000;

-- 27
select nombre, gastos, presupuesto from departamento where gastos > presupuesto;

-- 28
select nombre, gastos, presupuesto from departamento where gastos < presupuesto;

-- 29
select nombre, gastos, presupuesto from departamento where gastos = presupuesto;

-- 30
select * from empleado where apellido2 is null;

-- 31
select * from empleado where apellido2 is not null;

-- 32
select * from empleado where apellido2 = 'López';

-- 33
select * from empleado where apellido2 = 'Díaz' or apellido2 = 'Moreno';

-- 34
select * from empleado where apellido2 in ('Díaz', 'Moreno');

-- 35
select nombre, apellido1, apellido2 from empleado where codigo_departamento = 3;

-- 36
select nombre, apellido1, apellido2 from empleado where codigo_departamento in (2,4,5);

-- CONSULTAS MULTITABLAS
-- 1
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre, d.presupuesto, d.gastos 
from empleado e left join departamento d on e.codigo_departamento = d.codigo;

-- 2
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre, d.presupuesto, d.gastos 
from empleado e left join departamento d on e.codigo_departamento = d.codigo
order by d.nombre asc, e.apellido1 asc, e.nombre asc;

-- 3
select distinct d.codigo, d.nombre from departamento d left join empleado e 
on e.codigo_departamento = d.codigo;

-- 4
select distinct d.codigo, d.nombre, d.presupuesto - d.gastos as 'presupuesto act.' 
from departamento d left join empleado e on e.codigo_departamento = d.codigo;

-- 5
select d.nombre from empleado e left join departamento d on e.codigo_departamento = d.codigo
where e.nif = '38382980M';

-- 6
select d.nombre from empleado e left join departamento d on e.codigo_departamento = d.codigo
where concat(e.nombre, ' ', e.apellido1, ' ', e.apellido2) = 'Pepe Ruiz Santana';

-- 7
select e.nif, e.nombre, e.apellido1, e.apellido2 from empleado e right join departamento d
on e.codigo_departamento = d.codigo where d.nombre = 'I+D';

-- 8
select e.nif, e.nombre, e.apellido1, e.apellido2 from empleado e right join departamento d
on e.codigo_departamento = d.codigo where d.nombre in  ('I+D', 'Sistemas', 'Contabilidad');

-- 9
select e.nombre from empleado e left join departamento d on e.codigo_departamento = d.codigo
where d.presupuesto not between 100000 and 200000;

-- 10
select distinct d.nombre from departamento d left join empleado e on e.codigo_departamento = d.codigo
where e.apellido2 is null;

-- CONSULTAS MULTITABLA (COMPOSICION EXPERNA)
-- 1
select e.codigo, e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre, d.presupuesto, d.gastos
from empleado e left join departamento d on e.codigo_departamento = d.codigo;

-- 2
select e.codigo, e.nif, e.nombre, e.apellido1, e.apellido2 from empleado e left join departamento d
on e.codigo_departamento = d.codigo where e.codigo_departamento is null;

-- 3
select d.nombre from departamento d left join empleado e on e.codigo_departamento = d.codigo
where e.codigo_departamento is null;

-- 4
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre as 'departamento', d.presupuesto, d.gastos 
from empleado e left join departamento d on e.codigo_departamento = d.codigo
union 
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre as 'departamento', d.presupuesto, d.gastos 
from empleado e right join departamento d on e.codigo_departamento = d.codigo;

-- 5
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre as 'departamento', d.presupuesto, d.gastos
from empleado e left join departamento d on e.codigo_departamento = d.codigo where e.codigo_departamento is null
union 
select e.nif, e.nombre, e.apellido1, e.apellido2, d.nombre as 'departamento', d.presupuesto, d.gastos
from empleado e right join departamento d on e.codigo_departamento = d.codigo where e.codigo_departamento is null;

-- CONSULTAS RESUMEN
-- 1
select sum(presupuesto) from departamento;

-- 2
select avg(presupuesto) from departamento;

-- 3
select min(presupuesto) from departamento;

-- 4
select nombre, presupuesto from departamento 
where presupuesto = (select min(presupuesto) from departamento);

-- 5
select max(presupuesto) from departamento;

-- 6
select nombre, presupuesto from departamento
where presupuesto = (select max(presupuesto) from departamento);

-- 7
select count(codigo) as cant_empleados from empleado;

-- 8
select count(codigo) from empleado where apellido2 is not null;

-- 9
select d.nombre, count(e.codigo) from departamento d left join empleado e 
on e.codigo_departamento = d.codigo where e.codigo_departamento is not null
group by e.codigo_departamento;

-- 10
select d.nombre, count(e.codigo) from departamento d left join empleado e
on e.codigo_departamento = d.codigo where e.codigo_departamento is not null
group by e.codigo_departamento having count(d.codigo) >= 2;

-- 11
select d.nombre, count(e.codigo) from departamento d left join empleado e 
on e.codigo_departamento = d.codigo 
group by d.codigo;

-- 12
select d.nombre, count(e.codigo) from departamento d left join empleado e
on e.codigo_departamento = d.codigo where d.presupuesto >= 200000
group by d.codigo;

-- SUBCONSULTAS
-- 1
select e.nombre from departamento d left join empleado e on e.codigo_departamento = d.codigo
where d.nombre = 'Sistemas';

-- 2
select nombre, presupuesto from departamento 
where presupuesto = (select max(presupuesto) from departamento); 

-- 3
select nombre, presupuesto from departamento 
where presupuesto = (select min(presupuesto) from departamento); 

-- select * from empleado;



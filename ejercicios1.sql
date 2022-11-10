create database tienda;
use tienda;
create table fabricante(
	codigo int unsigned auto_increment,
    nombre varchar(100) not null,
    primary key (codigo)
);

create table producto(
	codigo int unsigned auto_increment,
    nombre varchar(100) not null,
    precio double not null,
    codigo_fabricante int unsigned not null,
    primary key (codigo),
    foreign key (codigo_fabricante) references fabricante(codigo)
);

insert into fabricante values (1,'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- 1
select nombre from producto;

-- 2
select nombre, precio from producto;

-- 3
select * from producto;

-- 4
select nombre, precio, precio*1.2 from producto;

-- 5
select nombre as 'nombre de producto', precio as 'euros', precio*1.2 as 'dolares' from producto;

-- 6
select upper(nombre) from producto;

-- 7
select lower(nombre) from producto;

-- 8
-- https://josejuansanchez.org/bd/ejercicios-consultas-sql/index.html#consultas-multitabla-composici%C3%B3n-interna
use tienda;
select nombre from fabricante;
select nombre, substring(nombre, 1, 1) from fabricante;

-- 9
select nombre, round(precio) from producto;

-- 10
select nombre, round(precio) from producto;

-- 11
select f.codigo from producto p left join fabricante f on f.codigo = p.codigo_fabricante;

-- 12
select distinct f.codigo from producto p left join fabricante f on f.codigo = p.codigo_fabricante;

-- 13
select nombre from fabricante order by nombre asc;

-- 14
select nombre from fabricante order by nombre desc;

-- 15
select nombre from producto order by nombre asc, precio desc;

-- 16
select * from fabricante limit 5;

-- 17
select * from fabricante limit 3,2; 

-- 18
select nombre, precio from producto order by precio asc limit 1;

-- 19
select nombre, precio from producto order by precio desc limit 1;
-- Otra forma
select nombre, max(precio) from producto;

-- 20
select nombre from producto where codigo_fabricante = 2;

-- 21
select nombre from producto where precio <= 120;

-- 22
select nombre from producto where precio >= 400;

-- 23
select nombre from producto where not precio >= 400; 

-- 24
select nombre from producto where precio >= 80 and precio <= 300;

-- 25
select nombre from producto where precio between 60 and 200;

-- 26
select nombre from producto where precio > 200 and codigo_fabricante = 6;

-- 27
select nombre from producto where codigo_fabricante = 1 or codigo_fabricante = 3 or codigo_fabricante = 5; 

-- 28
select nombre from producto where codigo_fabricante in (1,3,5);

-- 29
select nombre, 100*precio as 'céntimos' from producto;

-- 30
 select nombre from fabricante where nombre like 's%';
 
 -- 31
 select nombre from fabricante where nombre like '%e';
 
 -- 32
 select nombre from fabricante where nombre like '%w%';
 
 -- 33
 select nombre from fabricante where length(nombre) = 4;
 
 -- 34
 select nombre from producto where nombre like '%Portátil%';
 
 -- 35
 select nombre from producto where nombre like '%Monitor%' and precio <= 215;
 
 -- 36
 select nombre, precio from producto where precio >= 180 order by precio desc, nombre asc;

-- CONSULTAS MULTITABLA
-- 1
select f.nombre, p.nombre from fabricante f left join producto p on f.codigo = p.codigo_fabricante; 

-- 2
 select f.nombre from fabricante f left join producto p on f.codigo = p.codigo_fabricante where p.codigo_fabricante is null;
 
 -- 3
 select p.nombre from fabricante f right join producto p on f.codigo = p.codigo_fabricante where f.nombre is null;
 
 -- CONSULTAS RESUMEN
 -- 1
 select count(codigo) from producto;
 
 -- 2
 select count(codigo) from fabricante;
 
 -- 3
 select count(distinct codigo_fabricante) from producto;
 
 -- 4
 select avg(precio) from producto;
 
 -- 5
 select min(precio) from producto;
 
 -- 6 
 select max(precio) from producto;
 
 -- 7
select nombre, precio from producto where precio = (select min(precio) from producto);
 
 -- 8
 select nombre, precio from producto where precio = (select max(precio) from producto);
 
 -- 9
 select sum(precio) sum_precios from producto;
 
 -- 10
 select count(p.codigo) from producto p left join fabricante f 
 on p.codigo_fabricante = f.codigo 
 group by f.nombre having f.nombre = 'Asus';
 -- Otra forma
 select codigo from fabricante where nombre = 'Asus';
 select count(codigo) from producto where codigo_fabricante = 1;
 
 -- 11
 select avg(p.precio) from producto p left join fabricante f
 on p.codigo_fabricante = f.codigo 
 group by f.nombre having f.nombre = 'Asus';
 
 -- 12
 select min(p.precio) from producto p left join fabricante f
 on f.codigo = p.codigo_fabricante 
 group by f.nombre having f.nombre = 'Asus';
 
 -- 13
 select max(p.precio) from producto p left join fabricante f
 on f.codigo = p.codigo_fabricante
 group by f.nombre having f.nombre = 'Asus';
 
 -- 14
 select sum(p.precio) from producto p left join fabricante f
 on f.codigo = p.codigo_fabricante
 group by f.nombre having f.nombre = 'Asus';
 
 -- 15
 select max(p.precio) precio_max, min(p.precio) precio_min, avg(p.precio) precio_medio, count(p.codigo) 'Total'
 from producto p left join fabricante f on f.codigo = p.codigo_fabricante
 group by f.nombre having f.nombre = 'Crucial';
 
 -- 16
 select f.nombre, count(p.codigo) from fabricante f left join producto p
 on f.codigo = p.codigo_fabricante
 group by f.nombre
 order by count(p.codigo) desc;
 
 -- 17
 select f.nombre, max(p.precio) 'Precio máximo', min(p.precio) 'Precio mínimo', avg(p.precio) 'Precio medio'
 from fabricante f left join producto p on f.codigo = p.codigo_fabricante 
 group by f.nombre;
 
 -- 18
select codigo_fabricante, max(precio) 'Precio máximo', min(precio) 'Precio mínimo', avg(precio) 'Precio medio', count(codigo) '# total de prod.'
from producto group by codigo_fabricante 
having avg(precio) > 200;
 
 -- 19
 select f.nombre, max(p.precio) 'Precio máximo', min(p.precio) 'Precio mínimo', avg(p.precio) 'Precio medio', count(p.codigo) '# total de prod.'
 from fabricante f left join producto p on f.codigo = p.codigo_fabricante
 group by f.nombre 
 having avg(p.precio) > 200;
 
 -- 20
 select count(codigo) from producto where precio >= 180;
 
 -- 21
 select codigo_fabricante, count(codigo) from producto where precio >= 180 group by codigo_fabricante; 
 
-- 22
select codigo_fabricante, avg(precio) 'Precio Medio' from producto group by codigo_fabricante;

-- 23
select f.nombre, avg(p.precio) 'Precio medio' from fabricante f left join producto p 
on f.codigo = p.codigo_fabricante 
group by f.nombre;

-- 24
select f.nombre from fabricante f left join producto p 
on f.codigo = p.codigo_fabricante
group by f.nombre having avg(p.precio) >= 150; 

-- 25
select f.nombre from fabricante f left join producto p on f.codigo = p.codigo_fabricante 
group by f.nombre having count(p.codigo) >=2;

-- 26
select f.nombre, count(p.codigo) total from fabricante f left join producto p 
on f.codigo = p.codigo_fabricante where p.precio >= 220
group by f.nombre;

-- 28
select f.nombre from fabricante f left join producto p on f.codigo = p.codigo_fabricante
group by f.nombre having sum(p.precio) > 1000;

-- 29
select p.nombre, max(p.precio), f.nombre from fabricante f left join producto p 
on f.codigo = p.codigo_fabricante group by f.nombre order by f.nombre asc;


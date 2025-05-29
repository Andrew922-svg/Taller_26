use taller;
-- Punto 1
select  p.nombre
from producto as p;

-- Punto 2
select p.nombre, p.precio
from producto as p;

-- Punto 3
select * 
from producto;

-- Punto 4
select p.nombre, concat('$ ', round(p.precio,3)) as precio_dollar,
concat('€ ', round( p.precio * 0.89,3))  as precio_euro
from producto as p;

-- Punto 5
select p.nombre as nombre_producto, concat('$ ', round(p.precio,3)) as dolares,
concat('€ ', round( p.precio * 0.89,3))  as euros
from producto as p;

-- Punto 6
select upper(p.nombre) as nombre_mayuscula, p.precio
from producto as p;

-- Punto 7 
select lower(p.nombre) as precio_minuscula, p.precio
from producto as p;

-- Punto 8 
select f.nombre, upper(left(f.nombre,2)) as nombre_iniciales,
concat(upper(left(f.nombre,2)), substring(f.nombre,3)) as nombre_combinado
from fabricante as f;

-- Punto 9
select p.nombre, round(p.precio,2) as precio_redondeado
from producto as p;

-- Punto 10
select p.nombre, round(p.precio,0) as precio_no_decimal
from producto as p;

-- Punto 11
select p.nombre, f.codigo
from producto as p
join fabricante as f on p.codigo_fabricante = f.codigo order by  f.codigo asc;

-- Punto 12
select distinct f.codigo 
from producto as p
join fabricante as f on p.codigo_fabricante = f.codigo;

-- Punto 13
select f.nombre as nombre_ascendente
from fabricante as f order by nombre_ascendente asc;

-- Punto 14 
select f.nombre as nombre_descendente 
from fabricante as f order by nombre_descendente desc;

-- Punto 15 
select p.nombre as nombre_producto, round(p.precio,0) as precio_producto
from producto as p order by nombre_producto asc, precio_producto desc; 

-- Punto 16
select f.codigo, f.nombre
from fabricante as f limit 5; 

-- Punto 17
select f.codigo, f.nombre
from fabricante as f 
limit 2 offset 3;

-- Punto 18
select p.nombre, round(p.precio,0) as precios_economicos 
from producto as p 
order by precios_economicos asc
limit 5;

-- Punto 19 
select p.nombre, round(p.precio,0) as precios_costosos 
from producto as p 
order by precios_costosos desc 
limit 5;

-- Punto 20
select p.nombre, f.codigo
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo = 2;

-- Punto 21
select p.nombre, concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
where p.precio* 0.8804 <= 120;

-- Punto 22
select p.nombre, concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
where p.precio* 0.8804 >= 400;

-- Punto 23
select p.nombre, concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
where precio* 0.8804 <= 400;

-- Punto 24 
select p.nombre , concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
where precio * 0.8804 >= 80 and precio * 0.8804 <= 300;

-- Punto 25
select p.nombre, concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
where precio * 0.8804 between 60 and 200;

-- Punto 26
select p.nombre, concat('€ ', round(p.precio * 0.8804, 0)) as precio_euros
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where precio * 0.8804 = 200 and f.codigo = 6;

-- Punto 27
select p.nombre, f.codigo
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo = 1 or f.codigo = 3 or f.codigo = 5;

-- Punto 28
select p.nombre, f.codigo
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo in (1, 3, 5);

-- Punto 29 
select p.nombre, round(p.precio * 100, 0) as centimos
from producto as p;

-- Punto 30 
select f.nombre 
from fabricante as f
where upper(f.nombre) like 'S%';

-- Punto 31
select f.nombre 
from fabricante as f 
where lower(f.nombre) like '%e';

-- Punto 32
select f.nombre 
from fabricante as f 
where lower(f.nombre) like '%w%';

-- Punto 33
select f.nombre 
from fabricante as f 
where length(f.nombre) = 4;

-- Punto 34 
select p.nombre 
from producto as p 
where lower(p.nombre) like '%portatil%';

-- Punto 35 
select p.nombre, concat('€ ', round( p.precio * 0.8804,0)) as precio_euros
from producto as p
where lower(p.nombre) like '%monitor%' and p.precio * 0.8804 <= 215;

-- Punto 36 
select p.nombre, concat('€ ', round( p.precio * 0.8804,0)) as precio_euro
from producto as p 
where p.precio * 0.8804 >= 180 order by precio_euro desc, p.nombre asc;

-- Punto 1.1.4-1
select p.nombre, p.precio, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo;

-- Punto 1.1.4-2
select p.nombre, p.precio, f.nombre as nombre_fabricante
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
order by nombre_fabricante asc;

-- Punto 1.1.4-3
select p.codigo as codigo_producto, p.nombre as nombre_producto, f.codigo as codigo_fabricante, f.nombre as nombre_fabricante
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo; 

-- Punto 1.1.4-4
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
order by p.precio asc limit 1;

-- Punto 1.1.4-5
select p.nombre as nombre_producto, p.precio, f.nombre as nombre_fabricante 
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
order by p.precio desc limit 1;  




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

-- Punto 1.1.4-6
select p.nombre, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo = 2;

-- Punto 1.1.4-7
select p.nombre, concat('€ ', round(p.precio * 0.8804,0)), f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.nombre = 'Crucial' and p.precio * 0.8804 >= 200;

-- Punto 1.1.4-8
select p.nombre, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo = 1 or f.codigo = 3 or f.codigo = 5;

-- Punto 1.1.4-9
select p.nombre, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo in(1,3,5);

-- Punto 1.1.4-10
select p.nombre, p.precio, f.nombre 
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.nombre like '%e';

-- Punto 1.1.4-11
select p.nombre, p.precio, f.nombre 
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.nombre like '%w%';

-- Punto 1.1.4-12
select p.nombre as nombre_producto, concat('€ ', round(p.precio * 0.8804,0)), f.nombre as nombre_fabricante 
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where p.precio * 0.8804 >= 180 
order by p.precio * 0.8804 desc, f.nombre asc;

-- Punto 1.1.4-13
select distinct f.codigo, f.nombre as nombre_fabricante
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo in(select p.codigo_fabricante from producto); 

-- Punto 1.1.5-1
select f.nombre as nombre_fabricante, p.nombre as nombre_producto
from fabricante  f
left join producto p on p.codigo_fabricante = f.codigo;

-- Punto 1.1.5-2
select ifnull(p.nombre,0)as nombre_producto, f.nombre 
from producto p 
right join fabricante f on f.codigo = p.codigo_fabricante
where p.nombre is null;

-- Punto 1.1.5-3


-- Punto 1.1.6-1
select count(p.nombre) as productos_total
from producto as p;

-- Punto 1.1.6-2
select count(f.nombre) as total_fabricante
from fabricante as f;

-- Punto 1.1.6-3
select count(distinct f.codigo) as codigos
from fabricante as f;

-- Punto 1.1.6-4
select avg(p.precio) as promedio
from producto as p;

-- Punto 1.1.6-5
select concat('$' , min(p.precio)) as barato
from producto as p;

-- Punto 1.1.6-6
select concat('$ ', max(p.precio)) as costoso
from producto as p;

-- Punto 1.1.6-7
select p.nombre, concat('$ ', p.precio) as barato
from producto as p
where p.precio = (select min(precio) from producto);

-- Punto 1.1.6-8
select p.nombre, concat('$ ', p.precio) as costoso
from producto as p 
where p.precio = (select max(precio) from producto);

-- Punto 1.1.6-9
select sum(p.precio) as suma_total
from producto as p;

-- Punto 1.1.6-10
select count(p.nombre) as total_productos_asus, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo = 1; 

-- Punto 1.1.6-11
select avg(p.precio) as media_asus, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo =1;

-- Punto 1.1.6-12
select min(p.precio) as ecnomico, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo = 1;

-- Punto 1.1.6-13
select max(p.precio) as ecnomico, f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo = 1;

-- Punto 1.1.6-14
select count(p.nombre) as total, f.nombre 
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo 
where f.codigo = 1;

-- Punto 1.1.6-15
select max(p.precio) as costoso, min(p.precio) as minimo, 
avg(p.precio) as promedio, count(p.nombre) as 'Total productos', f.nombre
from producto as p 
join fabricante as f on p.codigo_fabricante = f.codigo
where f.codigo = 6;
 
-- Punto 1.1.6.16
select f.nombre, count(p.nombre)as 'Total' 
from producto as p
right join fabricante as f on p.codigo_fabricante = f.codigo 
group by f.nombre
order by Total desc;


-- Punto 1.1.6-17
SELECT 
    f.nombre,
    IFNULL(MIN(p.precio), 'No hay') AS minimo,
    IFNULL(MAX(p.precio), 'No hay') AS maximo,
    IFNULL(ROUND(AVG(p.precio),'No hay')) AS 'Promedio de precio'
FROM fabricante AS f
LEFT JOIN producto AS p ON f.codigo = p.codigo_fabricante
GROUP BY f.nombre
ORDER BY f.nombre ASC;

-- Punto 1.1.6-18
SELECT 
  p.codigo_fabricante,
  ROUND(MAX(p.precio * 0.8804), 2) AS precio_max_euros,
  ROUND(MIN(p.precio * 0.8804), 2) AS precio_min_euros,
  ROUND(AVG(p.precio * 0.8804), 2) AS precio_medio_euros,
  COUNT(p.codigo_fabricante) AS total_productos
FROM producto AS p
GROUP BY p.codigo_fabricante
HAVING AVG(p.precio * 0.8804) > 200;

-- Punto 1.1.6-19
select f.nombre as 'Nombre fabricante', 
	concat('€ ', max(round(p.precio * 0.8804,0)))as 'Precio maximo',
	concat('€ ', min(round(p.precio * 0.8804,0)))as 'Precio minimo',
    concat('€ ', avg(round(p.precio *0.8804,0)))as 'Promedio',
    count(p.nombre) as 'Total productos'
    from producto as p 
    join fabricante as f on p.codigo_fabricante = f.codigo
    group by f.nombre
    having avg(round(p.precio * 0.8804,0)) > 200;

-- Punto 1.1.6-20
select count(p.nombre) as 'Total productos mayor a 180€'
from producto as p 
where p.precio * 0.8804 >= 180;

-- Punto 1.1.6-21
select f.nombre, count(p.nombre) as 'Total productos mayo a 180'
	from producto as p 
	inner join fabricante as f on p.codigo_fabricante = f.codigo
	where p.precio * 0.8804 >= 180
	group by f.nombre;

-- Punto 1.1.6-22
select f.codigo, ifnull(avg(round(p.precio, 0)), 'No hay') as 'Promedio'
from producto as p 
right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.codigo; 

-- Punto 1.1.6-23
select f.nombre, ifnull(round(avg(p.precio * 0.8804),2), 0 ) as avg_precio
	from producto p
    right join fabricante f on p.codigo_fabricante = f.codigo
    group by f.nombre;
    
    

-- Punto 1.1.6-24
select f.nombre, concat('€ ', round(avg(p.precio * 0.8804), 0)) as 'Precio en euros'
	from producto as p 
	join fabricante as f on p.codigo_fabricante = f.codigo
	group by f.nombre
	having round(avg(p.precio * 0.8804), 0) >= 150;

-- Punto 1.1.6-25
select f.nombre as 'Nombre fab.', count(p.nombre)as 'Nombre pro.'
	from producto as p 
	join fabricante as f on p.codigo_fabricante = f.codigo
	group by f.nombre
	having count(p.nombre) > 2; 

-- Punton 1.1.7.1-1
select p.nombre
from producto p  
where p.codigo_fabricante = ( select f.codigo
from fabricante f
where f.nombre='Lenovo'
);

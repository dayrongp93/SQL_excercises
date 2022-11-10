### 1. Tienda de informatica

**Modelo entidad/relacion**

![tienda_informatica](tienda_inf.png)

**Consultas sobre una tabla**

1. Lista el nombre de todos los productos que hay en la tabla producto.

2. Lista los nombres y los precios de todos los productos de la tabla producto.

3. Lista todas las columnas de la tabla producto.

4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).

5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.

6. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.

7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.

8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

9. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.

10. Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

11. Lista el código de los fabricantes que tienen productos en la tabla producto.

12. Lista el código de los fabricantes que tienen productos en la tabla producto, eliminando los códigos que aparecen repetidos.

13. Lista los nombres de los fabricantes ordenados de forma ascendente.

14. Lista los nombres de los fabricantes ordenados de forma descendente.

15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.

16. Devuelve una lista con las 5 primeras filas de la tabla fabricante.

17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.

18. Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)

19. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)

20. Lista el nombre de todos los productos del fabricante cuyo código de fabricante es igual a 2.

21. Lista el nombre de los productos que tienen un precio menor o igual a 120€.

22. Lista el nombre de los productos que tienen un precio mayor o igual a 400€.

23. Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.

24. Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.

25. Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.

26. Lista todos los productos que tengan un precio mayor que 200€ y que el código de fabricante sea igual a 6.

27. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.

28. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador IN.

29. Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.

30. Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.

31. Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.

32. Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.

33. Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.

34. Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.

35. Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.

36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).

**Consultas multitablas (Composicion interna)**

1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.

2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.

3. Devuelve una lista con el código del producto, nombre del producto, código del fabricante y nombre del fabricante, de todos los productos de la base de datos.

4. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.

5. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.

6. Devuelve una lista de todos los productos del fabricante Lenovo.

7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.

8. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Sin utilizar el operador IN.

9. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packardy Seagate. Utilizando el operador IN.

10. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.

11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.

12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)

13. Devuelve un listado con el código y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.

**Consultas multitabla (Composición externa)**

<ol type="1">
<li><p>Devuelve un listado de <strong>todos los fabricantes</strong> que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.</p></li>
<li><p>Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.</p></li>
<li><p>¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.</p></li>
</ol>

**Consultas resumen**

<ol type="1">
<li><p>Calcula el número total de productos que hay en la tabla <code>productos</code>.</p></li>
<li><p>Calcula el número total de fabricantes que hay en la tabla <code>fabricante</code>.</p></li>
<li><p>Calcula el número de valores distintos de código de fabricante aparecen en la tabla <code>productos</code>.</p></li>
<li><p>Calcula la media del precio de todos los productos.</p></li>
<li><p>Calcula el precio más barato de todos los productos.</p></li>
<li><p>Calcula el precio más caro de todos los productos.</p></li>
<li><p>Lista el nombre y el precio del producto más barato.</p></li>
<li><p>Lista el nombre y el precio del producto más caro.</p></li>
<li><p>Calcula la suma de los precios de todos los productos.</p></li>
<li><p>Calcula el número de productos que tiene el fabricante <code>Asus</code>.</p></li>
<li><p>Calcula la media del precio de todos los productos del fabricante <code>Asus</code>.</p></li>
<li><p>Calcula el precio más barato de todos los productos del fabricante <code>Asus</code>.</p></li>
<li><p>Calcula el precio más caro de todos los productos del fabricante <code>Asus</code>.</p></li>
<li><p>Calcula la suma de todos los productos del fabricante <code>Asus</code>.</p></li>
<li><p>Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante <code>Crucial</code>.</p></li>
<li><p>Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto. El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos.</p></li>
<li><p>Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.</p></li>
<li><p>Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. No es necesario mostrar el nombre del fabricante, con el código del fabricante es suficiente.</p></li>
<li><p>Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. Es necesario mostrar el nombre del fabricante.</p></li>
<li><p>Calcula el número de productos que tienen un precio mayor o igual a 180€.</p></li>
<li><p>Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€.</p></li>
<li><p>Lista el precio medio los productos de cada fabricante, mostrando solamente el código del fabricante.</p></li>
<li><p>Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante.</p></li>
<li><p>Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€.</p></li>
<li><p>Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.</p></li>
<li><p>Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.</p></li>
</ol>

27. Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. El listado debe mostrar el nombre de todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio superior o igual a 220€ deberá aparecer en el listado con un valor igual a 0 en el número de productos.

28. Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.

29. Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. El resultado debe tener tres columnas: nombre del producto, precio y nombre del fabricante. El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.



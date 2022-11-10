### 2. Gestion de empleados

**Modelo entidad/relacion**

![gestion_empleados](gestion_empleados.png)

**Consultas sobre una tabla**

<ol type="1">
<li><p>Lista el primer apellido de todos los empleados.</p></li>
<li><p>Lista el primer apellido de los empleados eliminando los apellidos que estén repetidos.</p></li>
<li><p>Lista todas las columnas de la tabla <code>empleado</code>.</p></li>
<li><p>Lista el nombre y los apellidos de todos los empleados.</p></li>
<li><p>Lista el código de los departamentos de los empleados que aparecen en la tabla <code>empleado</code>.</p></li>
<li><p>Lista el código de los departamentos de los empleados que aparecen en la tabla <code>empleado</code>, eliminando los códigos que aparecen repetidos.</p></li>
<li><p>Lista el nombre y apellidos de los empleados en una única columna.</p></li>
<li><p>Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.</p></li>
<li><p>Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.</p></li>
<li><p>Lista el código de los empleados junto al nif, pero el nif deberá aparecer en dos columnas, una mostrará únicamente los dígitos del nif y la otra la letra.</p></li>
<li><p>Lista el nombre de cada departamento y el valor del presupuesto actual del que dispone. Para calcular este dato tendrá que restar al valor del presupuesto inicial (columna <code>presupuesto</code>) los gastos que se han generado (columna <code>gastos</code>). Tenga en cuenta que en algunos casos pueden existir valores negativos. Utilice un alias apropiado para la nueva columna columna que está calculando.</p></li>
<li><p>Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.</p></li>
<li><p>Lista el nombre de todos los departamentos ordenados de forma ascendente.</p></li>
<li><p>Lista el nombre de todos los departamentos ordenados de forma desscendente.</p></li>
<li><p>Lista los apellidos y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar sus apellidos y luego su nombre.</p></li>
<li><p>Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.</p></li>
<li><p>Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.</p></li>
<li><p>Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen mayor gasto.</p></li>
<li><p>Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto.</p></li>
<li><p>Devuelve una lista con 5 filas a partir de la tercera fila de la tabla <code>empleado</code>. La tercera fila se debe incluir en la respuesta. La respuesta debe incluir todas las columnas de la tabla <code>empleado</code>.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a 150000 euros.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos y el gasto, de aquellos que tienen menos de 5000 euros de gastos.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos y el presupesto, de aquellos que tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador <code>BETWEEN</code>.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos que <strong>no</strong> tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador <code>BETWEEN</code>.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador <code>BETWEEN</code>.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos que <strong>no</strong> tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador <code>BETWEEN</code>.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de quellos departamentos donde los gastos sean mayores que el presupuesto del que disponen.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean menores que el presupuesto del que disponen.</p></li>
<li><p>Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean iguales al presupuesto del que disponen.</p></li>
<li><p>Lista todos los datos de los empleados cuyo segundo apellido sea <code>NULL</code>.</p></li>
<li><p>Lista todos los datos de los empleados cuyo segundo apellido <strong>no sea</strong> <code>NULL</code>.</p></li>
<li><p>Lista todos los datos de los empleados cuyo segundo apellido sea <code>López</code>.</p></li>
<li><p>Lista todos los datos de los empleados cuyo segundo apellido sea <code>Díaz</code> o <code>Moreno</code>. Sin utilizar el operador <code>IN</code>.</p></li>
<li><p>Lista todos los datos de los empleados cuyo segundo apellido sea <code>Díaz</code> o <code>Moreno</code>. Utilizando el operador <code>IN</code>.</p></li>
<li><p>Lista los nombres, apellidos y nif de los empleados que trabajan en el departamento <code>3</code>.</p></li>
<li><p>Lista los nombres, apellidos y nif de los empleados que trabajan en los departamentos <code>2</code>, <code>4</code> o <code>5</code>.</p></li>
</ol>

**Consultas multitabla (Composición interna)**

<ol type="1">
<li><p>Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.</p></li>
<li><p>Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.</p></li>
<li><p>Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.</p></li>
<li><p>Devuelve un listado con el código, el nombre del departamento y el valor del presupuesto actual del que dispone, solamente de aquellos departamentos que tienen empleados. El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial (columna <code>presupuesto</code>) el valor de los gastos que ha generado (columna <code>gastos</code>).</p></li>
<li><p>Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif <code>38382980M</code>.</p></li>
<li><p>Devuelve el nombre del departamento donde trabaja el empleado <code>Pepe Ruiz Santana</code>.</p></li>
<li><p>Devuelve un listado con los datos de los empleados que trabajan en el departamento de <code>I+D</code>. Ordena el resultado alfabéticamente.</p></li>
<li><p>Devuelve un listado con los datos de los empleados que trabajan en el departamento de <code>Sistemas</code>, <code>Contabilidad</code> o <code>I+D</code>. Ordena el resultado alfabéticamente.</p></li>
<li><p>Devuelve una lista con el nombre de los empleados que tienen los departamentos que <strong>no</strong> tienen un presupuesto entre 100000 y 200000 euros.</p></li>
<li><p>Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea <code>NULL</code>. Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.</p></li>
</ol>

**Consultas multitabla (Composición externa)**

<ol type="1">
<li><p>Devuelve un listado con <strong>todos los empleados</strong> junto con los datos de los departamentos donde trabajan. Este listado también debe incluir los empleados que no tienen ningún departamento asociado.</p></li>
<li><p>Devuelve un listado donde sólo aparezcan aquellos empleados que no tienen ningún departamento asociado.</p></li>
<li><p>Devuelve un listado donde sólo aparezcan aquellos departamentos que no tienen ningún empleado asociado.</p></li>
<li><p>Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. El listado debe incluir los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.</p></li>
<li><p>Devuelve un listado con los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.</p></li>
</ol>

**Consultas resumen**

<ol type="1">
<li><p>Calcula la suma del presupuesto de todos los departamentos.</p></li>
<li><p>Calcula la media del presupuesto de todos los departamentos.</p></li>
<li><p>Calcula el valor mínimo del presupuesto de todos los departamentos.</p></li>
<li><p>Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con menor presupuesto.</p></li>
<li><p>Calcula el valor máximo del presupuesto de todos los departamentos.</p></li>
<li><p>Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con mayor presupuesto.</p></li>
<li><p>Calcula el número total de empleados que hay en la tabla <code>empleado</code>.</p></li>
<li><p>Calcula el número de empleados que <strong>no tienen</strong> <code>NULL</code> en su segundo apellido.</p></li>
<li><p>Calcula el número de empleados que hay en cada departamento. Tienes que devolver dos columnas, una con el nombre del departamento y otra con el número de empleados que tiene asignados.</p></li>
<li><p>Calcula el nombre de los departamentos que tienen más de 2 empleados. El resultado debe tener dos columnas, una con el nombre del departamento y otra con el número de empleados que tiene asignados.</p></li>
<li><p>Calcula el número de empleados que trabajan en cada uno de los departamentos. El resultado de esta consulta también tiene que incluir aquellos departamentos que no tienen ningún empleado asociado.</p></li>
<li><p>Calcula el número de empleados que trabajan en cada unos de los departamentos que tienen un presupuesto mayor a 200000 euros.</p></li>
</ol>

**Subconsultas**

<ol type="1">
<li><p>Devuelve un listado con todos los empleados que tiene el departamento de <code>Sistemas</code>. (Sin utilizar <code>INNER JOIN</code>).</p></li>
<li><p>Devuelve el nombre del departamento con mayor presupuesto y la cantidad que tiene asignada.</p></li>
<li><p>Devuelve el nombre del departamento con menor presupuesto y la cantidad que tiene asignada.</p></li>
</ol>

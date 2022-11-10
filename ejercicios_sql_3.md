### 2. Jardineria

**Modelo entidad/relacion**

![jardineria](jardineria.png)

**Consultas sobre una tabla**

<ol type="1">
<li><p>Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.</p></li>
<li><p>Devuelve un listado con la ciudad y el teléfono de las oficinas de España.</p></li>
<li><p>Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.</p></li>
<li><p>Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.</p></li>
<li><p>Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.</p></li>
<li><p>Devuelve un listado con el nombre de los todos los clientes españoles.</p></li>
<li><p>Devuelve un listado con los distintos estados por los que puede pasar un pedido.</p></li>
<li>Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta: usando la función YEAR de MySQL, usando la función DATE_FORMAT de MySQL, sin usar ninguna de las funciones anteriores.</li>
</ol>

9. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.

10. Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.
Utilizando la función ADDDATE de MySQL.
Utilizando la función DATEDIFF de MySQL.

11. Devuelve un listado de todos los pedidos que fueron rechazados en 2009.

12. Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.

13. Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.

14. Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.

15. Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

16. Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.

**Consultas multitabla (Composición interna)**

<ol type="1">
<li><p>Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.</p></li>
<li><p>Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.</p></li>
<li><p>Muestra el nombre de los clientes que <strong>no</strong> hayan realizado pagos junto con el nombre de sus representantes de ventas.</p></li>
<li><p>Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.</p></li>
<li><p>Devuelve el nombre de los clientes que <strong>no</strong> hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.</p></li>
<li><p>Lista la dirección de las oficinas que tengan clientes en <code>Fuenlabrada</code>.</p></li>
<li><p>Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.</p></li>
<li><p>Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.</p></li>
<li><p>Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.</p></li>
<li><p>Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.</p></li>
<li><p>Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.</p></li>
</ol>

**Consultas multitabla (Composición externa)**

<ol type="1">
<li><p>Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.</p></li>
<li><p>Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.</p></li>
<li><p>Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.</p></li>
<li><p>Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.</p></li>
<li><p>Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.</p></li>
<li><p>Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.</p></li>
<li><p>Devuelve las oficinas donde <strong>no trabajan</strong> ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama <code>Frutales</code>.</p></li>
</ol>

8. Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.

**Consultas resumen**

<ol type="1">
<li><p>¿Cuántos empleados hay en la compañía?</p></li>
<li><p>¿Cuántos clientes tiene cada país?</p></li>
<li><p>¿Cuál fue el pago medio en 2009?</p></li>
<li><p>¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.</p></li>
<li><p>Calcula el precio de venta del producto más caro y más barato en una misma consulta.</p></li>
<li><p>Calcula el número de clientes que tiene la empresa.</p></li>
<li><p>¿Cuántos clientes existen con domicilio en la ciudad de Madrid?</p></li>
<li><p>¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por <code>M</code>?</p></li>
<li><p>Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.</p></li>
<li><p>Calcula el número de clientes que no tiene asignado representante de ventas.</p></li>
<li><p>Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.</p></li>
<li><p>Calcula el número de productos diferentes que hay en cada uno de los pedidos.</p></li>
<li><p>Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.</p></li>
<li><p>Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.</p></li>
</ol>


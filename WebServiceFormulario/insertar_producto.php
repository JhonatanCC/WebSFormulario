<?php

include 'conexion.php';
$codigo=$_POST['codigo'];
$nombre_producto=$_POST['nombre_producto'];
$stock=$_POST['stock'];
$precio_costo=$_POST['precio_costo'];
$precio_venta=$_POST['precio_venta'];

$consulta="insert into producto values('".$codigo."','".$nombre_producto."','".$stock."','".$precio_costo."','".$precio_venta."')";
mysqli_query($conexion,$consulta)or die (mysqli_error());
mysqli_close($conexion);

?>
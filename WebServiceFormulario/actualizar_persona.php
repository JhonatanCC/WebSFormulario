<?php

include 'conexion.php';
$cedula=$_POST['cedula'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$pais=$_POST['pais'];
$provincia=$_POST['provincia'];
$direccion=$_POST['direccion'];

$consulta="update persona set nombre = '".$nombre."',apellido = '".$apellido."',pais = '".$pais."',provincia = '".$provincia."',direccion = '".$direccion."' where cedula = '".$cedula."' ";
mysqli_query($conexion,$consulta)or die (mysqli_error());
mysqli_close($conexion);

?>
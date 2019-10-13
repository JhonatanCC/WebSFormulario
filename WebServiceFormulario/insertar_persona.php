<?php

include 'conexion.php';
$cedula=$_POST['cedula'];
$nombre=$_POST['nombre'];
$apellido=$_POST['apellido'];
$pais=$_POST['pais'];
$provincia=$_POST['provincia'];
$direccion=$_POST['direccion'];

$consulta="insert into persona values('".$cedula."','".$nombre."','".$apellido."','".$pais."','".$provincia."','".$direccion."')";
mysqli_query($conexion,$consulta)or die (mysqli_error());
mysqli_close($conexion);

?>
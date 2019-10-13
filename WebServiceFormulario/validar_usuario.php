<?php
include 'conexion.php';
$nombre=$_POST['nombre'];
$cedula=$_POST['cedula'];

//$nombre="Jhonatan";
//$cedula="1727254839";

$sentencia=$conexion->prepare("SELECT * FROM persona WHERE nombre=? AND cedula=?");
$sentencia->bind_param('ss',$nombre,$cedula);
$sentencia->execute();

$resultado = $sentencia->get_result();
if ($fila = $resultado->fetch_assoc()) {
         echo json_encode($fila,JSON_UNESCAPED_UNICODE);     
}
$sentencia->close();
$conexion->close();
?>
<?php

include 'conexion.php';
$cedula=$_GET['cedula'];

$consulta = "select * from persona where cedula = '$cedula'";
$resultado = $conexion -> query ($consulta);

while($fila=$resultado -> fetch_array() ){
	$persona[] = array_map('utf8_encode', $fila);
}
echo json_encode($persona);
$resultado -> close(); 

?>
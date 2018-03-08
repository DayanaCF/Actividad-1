<?php
include '../conexion.php';
$elusuario= $_POST["nombreusuario"];
$lacontrasena= $_POST["contrasena"];
$elrol= $_POST["rol"];





$insertar=  "INSERT INTO usuarios(nombreusuario, contrasena, rol) VALUES ('$elusuario', '$lacontrasena', '$elrol')"; 

$resultado= mysqli_query($conexion, $insertar); 
if (!$resultado) {
	echo "error al ingresar";
}else{
	echo '<script>
	alert("el usuario pudo ingresar correctamente")
	</script>'; 
	header("location:../formulario.php");	
	exit;
}
	//echo "conductora registrado exitosamente"; 




mysqli_close($conexion);
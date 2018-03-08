<?php
include '../conexion.php';
$nombre1= $_POST["nombre1"];
$nombre2= $_POST["nombre2"];
$apellido1= $_POST["apellido1"];
$apellido2= $_POST["apellido2"];
$correo= $_POST["correo"];
$usuario= $_POST["usuario"];
$descripcion= $_POST["descripcion"];
$contrasena= $_POST["contrasena"];



$insertar=  "INSERT INTO lector(nombre1, nombre2, apellido1, apellido2, correo, usuario, descripcion, contrasena) VALUES ('$nombre1', '$nombre2', '$apellido1', '$apellido2', '$correo', '$usuario', '$descripcion', '$contrasena')"; 

$resultado= mysqli_query($conexion, $insertar); 
if (!$resultado) {
	echo "error al registrarse";
}else{
	echo '<script>
	alert("el usuario ya esta registrado")
	</script>'; 
	header("location:../formulario.php");	
	exit;
}
	//echo "conductora registrado exitosamente"; 




mysqli_close($conexion);
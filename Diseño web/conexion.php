<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>sin titulo</title>

<body>

<?php

    $miconexion=mysqli_connect("localhost", "root", "", "biblioteca");


    /*comprobar conexion*/

    if (!$miconexion) {

    	echo "La conexion ha fallado: " . mysqli_error();

    	exit();

    }

    
    if($_FILES['foto'] ['error']){


       switch($_FILES['foto'] ['error']){

           case 1: //Error exceso de tamaño de archivo en php.ini

           echo "El tamano del archivo excede lo permitido por el servidor";

           break;

           case 2: //Error tamaño archivo marcado desde el formulario

           echo "El tamaño del archivo excede 2 MB";

           break;

           case 3: //Corrupcion de archivo

           echo "El envio de archivo se interrumpió";

           break;

           case 4: //No hay fichero

           echo "No se ha enviado ningún archivo";

           break;





       }





    }else{

     
       echo "Entrada subida correctamente<br/>";



       if((isset($_FILES['foto'] ['name']) && ($_FILES['foto'] ['error']=UPLOAD_ERR_OK))){

        
         $destino_de_ruta="fotos/";


         move_uploaded_file($_FILES['foto' ['tmp_name'], $destino_de_ruta . $_FILES['foto'] ['name']);

         echo "El archivo " . $_FILES['foto'] ['name'] . " Se ha copiado en el directorio de fotos";


     }else{


      echo "El archivo no se ha podido copiar al directorio de fotos"
     }




       }


       $elnombre=$_POST['nombre1'];
       $elotronombre=$_POST['nombre2'];
       $elapellido=$_POST['apellido1'];
       $elotroapellido=$_POST['apellido2'];
       $elusuario=$_POST['nombreusuario'];
       $elcorreo=$_POST['correo'];
       $elrol=$_POST['rol'];
       $ladescripcion=$_POST['descripcion'];
       $lafoto=$_POST['foto'] ['name'];
       $laclave=$_POST['contrasena'];
       $lafecha=date("Y-m-d H:i:s");


    $miconsulta="INSERT INTO USUARIO (nombre1, nombre2, apellido1, apellido2, nombreusuario, correo, rol, descripcion, foto, contrasena, fecha) VALUES ('" . $elnombre . "', '" . $elotronombre . "', '" . $elapellido . "', '" . $elotroapellido . "', '" . $elusuario . "', '" . $elcorreo . "', '" . $elrol . "', '" . $ladescripcion . "', '" . $lafoto . "', '" . $laclave . "', '" . $lafecha . "')";

        
        $resultado=mysqli_query($miconexion, $miconsulta);

        /* Cerramos conexión*/

        mysqli_close($miconexion);

        






?>
</body>
</head>

	DELETE * FROM Libros WHERE nombre= “Harry Potter”

         // D.E: nombre. D.S: id, autor, descripcion, fecha_publicación, categoria//

	UPDATE escritor SET apellido2= “Rodríguez” WHERE nombre1= “Antonio” AND apellido1= “García” AND apellido2= “Benites”

	 // D.E: nombre1, apellido1. D.S: apellido2//

        INSERT INTO lector (nombre1, apellido1) VALUES (“Miguel”, “López”)

           // D.E: lector D.S: nombre1, apellido1//

	SELECT nombre1, descripción FROM Libros WHERE fecha_publicacion= “02/02/2017”

        // D.E: fecha_publicacion D.S: nombre1, descripcion//

	UPDATE libros SET nombre="el amor" WHERE nombre=" sentimientos"
        
        // D.E: nombre D.S: //




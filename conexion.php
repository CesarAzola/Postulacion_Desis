<?php
	//INFORMACION BD
	$host 	  = "localhost";    	// Nombre del servidor.
	$bd       = "votacion";   // Nombre de la base de datos.
	$user     = "root";    		// Nombre del usuario.
	$password = "";    			// Clave para acceder a la base de datos.

	//LISTA DE TABLAS
	$table_voto = "voto"; 	  
	$table_candidate = "candidate"; 	
	$table_region = "region"; 	
	$table_commune = "commune"; 	 			

	$conexion = new mysqli($host,$user,$password,$bd);

?>
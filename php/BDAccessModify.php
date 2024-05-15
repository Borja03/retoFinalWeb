<!DOCTYPE html>

<html>

	<head>
		<meta charset="utf-8" />
		<title>Modify boss</title>
		<link rel="stylesheet" href="../../../front/html/css/css_lore.css"/>
	</head>

	<body>





<h1>Sent Correctly</h1>
</body>
</html>
<?php 

require_once("../ServerConexion/BDConexion.php");

try {

    $rutaXq = "../xquery/modify.xq";
    $fichero = fopen($rutaXq, "r"); // Abrimos el fichero $rutaXq en modo lectura "r"
    $xq = fread($fichero, filesize($rutaXq)); // Leemos el contenido del fichero y lo guardamos en la variable $xq
    fclose($fichero); // Cerramos el fichero
    
    // create session
    $session = new Session();    
    // open database
    $session->execute("open saga"); // open y el nombre de la base de datos en el servidor BaseX
    // xquery
    $query = $session->query($xq);

	$query->bind('$bossId', $_GET['boss']);
	$query->bind('$juego', $_GET['game']);
	$query->bind('$nombre', $_GET['nombre']);
	$query->bind('$genero', $_GET['genero']);
	$query->bind('$lore', $_GET['lore']);
	$query->bind('$arma1', $_GET['arma1']);
	$query->bind('$arma2', $_GET['arma2']);
	$query->bind('$localizacion', $_GET['localizacion']);
    // execute result
    $result = $query->execute();
    // close query
    $query->close();
    // close session
    $session->close();

    // Show the result
    echo $result;
    
} catch(Exception $e) {

    echo $e->getMessage();

}

?> 
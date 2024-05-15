<!DOCTYPE html>

<html>

	<head>
		<meta charset="utf-8" />
		<title>Unmatched</title>
		<link rel="stylesheet" href="../../front/html/css/css_lore.css"/>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cinzel|Fauna+One">
	</head>

	<body>
	<a id="top"></a>
<!-----------------------------------Navigation bar------------------------------------------>
		<div class="topnav">
			<a class="active" href="/projectunmatched/index.html">Unmatched</a>
			<div class="dropdown">
				<a href="/projectunmatched/back/xpath/xslt/transform.php">Cards</a>
				<!--<button class="dropbtn">Cards</button>
				<div class="dropdown-content">
					<a href="kingdom.html">Locations</a>
					<a href="charaters.html">Characters</a>
				</div>-->
			</div>
			<div class="dropdown">
				<a href="/projectunmatched/front/html/boards.html">Boards</a>
			</div>
			<div class="dropdown">
			    <button class="dropbtn">Sets</button>
				<div class="dropdown-content">
					<a href="/projectunmatched/front/html/form_new_set.html">Add new set</a>
					<a href="/projectunmatched/front/html/form_modify_set.html">Modify a set</a>
					<a href="/projectunmatched/front/html/form_delete_set.html">Delete a set</a>
					<a href="/projectunmatched/back/xpath/xslt/transformSets.php">See all sets</a>
				</div>
			</div>
			<a href="/projectunmatched/back/xpath/xslt/transformHeroes.php">Heroes</a>
			<a href="/projectunmatched/front/html/about.html">About</a>
		</div>
<!------------------------------------------------------------------------------------------->
<h1>Sent Correctly</h1>
</body>
</html>
<?php 

require_once("../ServerConexion/BDConexion.php");

try {

    $rutaXq = "../xquery/delete.xq";
    $fichero = fopen($rutaXq, "r"); // Abrimos el fichero $rutaXq en modo lectura "r"
    $xq = fread($fichero, filesize($rutaXq)); // Leemos el contenido del fichero y lo guardamos en la variable $xq
    fclose($fichero); // Cerramos el fichero
    
    // create session
    $session = new Session();    
    // open database
    $session->execute("open saga"); // open y el nombre de la base de datos en el servidor BaseX
    // xquery
    $query = $session->query($xq);
    $query->bind('$selectedBoss', $_GET["bossID"]);
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
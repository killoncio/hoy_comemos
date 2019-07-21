<?php

include '../database_object.php';

$stmt = $dbConnection->prepare("INSERT INTO `recetas`(`nombre` ,`tipo`,`ingredientes`,`dificultad`,`tiempo`,`link`) VALUES ( :nombre, :tipo, :ingredientes, :dificultad, :tiempo, :link)");

$nombre 			= ($_POST['nombre']);
$tipo 				= ($_POST['tipo']);
$ingredientes 		= ($_POST['ingredientes']);
$dificultad 		= ($_POST['dificultad']);
$tiempo 			= ($_POST['tiempo']);
$link 				= ($_POST['link']);

$stmt->bindParam(':nombre', $nombre);
$stmt->bindParam(':tipo', $tipo);
$stmt->bindParam(':ingredientes', $ingredientes);
$stmt->bindParam(':dificultad', $dificultad);
$stmt->bindParam(':tiempo', $tiempo);
$stmt->bindParam(':link', $link);

if ($stmt->execute()) {
	header('Location:http://hoycomemos.hol.es/index.php?receta_incluida=1');
} else {
	header('Location:http://hoycomemos.hol.es/index.php?receta_incluida=0');
}

?>


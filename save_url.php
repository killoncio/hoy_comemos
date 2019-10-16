<?php

include '../database_object.php';

$stmt = $dbConnection->prepare("UPDATE `recetas`
								SET `link` = :link
								WHERE `id` = :id
								");

$id 	= ($_POST['id']);
$link 	= ($_POST['link']);

$stmt->bindParam(':id', $id);
$stmt->bindParam(':link', $link);

if ($stmt->execute()) {
	echo 'done';
} else {
	echo 'error';
}

?>


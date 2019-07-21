<?php

include '../database_object.php';

$stmt = $dbConnection->prepare("SELECT *
    							FROM `recetas`");

$result = $stmt->execute();
$result2 = $stmt->fetchAll();

echo json_encode($result2);

?>
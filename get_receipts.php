<?php

include '../database_object.php';

$stmt = $dbConnection->prepare("SELECT *
    							FROM `recetas`");

$result = $stmt->execute();

if ($resul2 = $stmt->fetchAll()) {

    echo json_encode($resul2);
} 


?>
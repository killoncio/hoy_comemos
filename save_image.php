<?php

include '../database_object.php';



$stmt = $dbConnection->prepare("UPDATE `recetas` 
								SET `image` = :value2
								WHERE `nombre` = :value1
    							");

if(!empty($_POST)){
        foreach($_POST as $key => $val){
            $stmt->bindParam(':value1', $key);
            $stmt->bindParam(':value2', $val);
        }
}


$result = $stmt->execute();

echo $key . 'key and ' . $val . '$val';

?>
<?php

// Connect to database server
$dbConnection = new PDO('mysql:dbname=id10207170_hoycomemos;host=localhost;charset=utf8', 'id10207170_dani', 'dani1980');

$dbConnection->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>
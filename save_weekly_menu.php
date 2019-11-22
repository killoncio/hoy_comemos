<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include 'database_object.php';

$stmt = $dbConnection->prepare("INSERT INTO `weekly_menus`
								(`meal`, `date`, `category`)
								VALUES (:meal, :date, :category)");

$meal 	= ($_POST['name']);
$date 	= ($_POST['date']);
$category 	= ($_POST['category']);

$stmt->bindParam(':meal', $meal);
$stmt->bindParam(':date', $date);
$stmt->bindParam(':category', $category);

if ($stmt->execute()) {
	echo 'done';
} else {
	echo 'error';
}

?>


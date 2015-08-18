<?php

$hostname = '';
$username = '';
$password = '';
$dbname   = '';

	try {
		$db = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);
    }
	catch(PDOException $e){
		echo $e->getMessage();
    }
?>
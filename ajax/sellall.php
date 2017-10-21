<?php 
require_once '../database/db.php'; // The mysql database connection script
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);
$id_prod="";
$sell_list=$_POST['selllist'];
foreach ($sell_list as $product) {
	$id_prod=$product['id'];
	$query="INSERT INTO historic(`id_prod`) VALUES ('$id_prod');";
	echo $query;
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
}

?>
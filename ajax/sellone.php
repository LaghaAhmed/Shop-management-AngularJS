<?php 
require_once '../database/db.php'; // The mysql database connection script
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);
$prodID=$_POST['id'];

	$query="INSERT INTO historic(`id_prod`) VALUES ('$prodID')";


echo $query;
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
//$result = $mysqli->affected_rows;
//echo $json_response = json_encode($result);
?>
<?php 
require_once '../database/db.php';
$_POST = json_decode(file_get_contents('php://input'), true);
$id=$_POST['id'];
$name=$_POST['name'];
$brand=$_POST['brand'];
$quantity=$_POST['quantity'];
$provider=$_POST['provider'];
$prixv=$_POST['prixv'];
$info=$_POST['info'];
$query="UPDATE `products` SET `name`='$name',`brand`='$brand',`info`='$info',`prixv`='$prixv',`quantity`='$quantity',`provider`='$provider' WHERE `id`='$id'";
//echo $query;
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
$result = $mysqli->affected_rows;
echo $json_response = json_encode($result);


?>
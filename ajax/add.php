<?php 
require_once '../database/db.php'; // The mysql database connection script
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);
$name=$_POST['name'];
$brand=$_POST['brand'];
$quantity=$_POST['quantity'];
$provider=$_POST['provider'];
$price=$_POST['price'];
$info=$_POST['info'];
if(isset($_POST['qrcode']) && $_POST['qrcode']!="" ){
	$qrcode=$_POST['qrcode'];
	$query="INSERT INTO products(`qrcode`,`name`, `brand`, `info`, `prixv`, `quantity`, `provider`, `status`) VALUES ('$qrcode','$name','$brand','$info','$price','$quantity','$provider','1')";	

}
else{
	
	$query="INSERT INTO products(`name`, `brand`, `info`, `prixv`, `quantity`, `provider`) VALUES ('$name','$brand','$info','$price','$quantity','$provider')";	
	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
	echo "query".$query;
	$newQRcode=$mysqli->insert_id;
	$query2="UPDATE `products` SET `qrcode` = 'HT-Media".$newQRcode."' WHERE `id`=".$newQRcode;	
	echo "query2".$query2;
	$result = $mysqli->query($query2) or die($mysqli->error.__LINE__);
}

//$result = $mysqli->affected_rows;
echo $json_response = json_encode($result);
?>
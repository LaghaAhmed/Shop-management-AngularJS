
<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require_once '../database/db.php';
$_POST = json_decode(file_get_contents('php://input'), true);
$arr = array();
		if(isset($_POST['qrcode']) && $_POST['qrcode']!=""){
			$qrcode=$_POST['qrcode'];
			$query="SELECT * FROM `products` WHERE `qrcode`= '$qrcode'";
			//echo $query;
			$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
			
			if($result->num_rows > 0) {
				while($row = $result->fetch_assoc()) {
					$arr[] = $row;	
				}
			}else{$arr="{ send : nomatch }";}
		}else{$arr="{ send : noqrcode }";}

# JSON-encode the response
echo $json_response = json_encode($arr);
?>

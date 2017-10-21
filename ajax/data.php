
<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
require_once '../database/db.php';

$query="SELECT * FROM products";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;	
	}
}

# JSON-encode the response
echo $json_response = json_encode($arr);
?>

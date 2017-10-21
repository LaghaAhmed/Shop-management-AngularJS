<?php 
require_once '../database/db.php'; // The mysql database connection script
if(isset($_GET['prodID'])){
$prodID = $_GET['prodID'];

$query="delete from products where id='$prodID'";
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$result = $mysqli->affected_rows;

echo $json_response = json_encode($result);
}
?>
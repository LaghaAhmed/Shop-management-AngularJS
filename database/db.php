<?php 
$DB_HOST = '127.0.0.1';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = 'gestion_bd';
$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME) or die("error");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>

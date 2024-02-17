<?php
$servername = "localhost";
$username = "cmpe341";
$password = "";
$conn = new mysqli($servername, $username, $password, "cmpe341");

$keys = array_key_first($_GET);
$table_name = $_GET["table_name"];

// header('Location:' . '../tables.php');
$result = $conn->query("SHOW INDEX FROM " . $table_name . " WHERE Key_name = 'PRIMARY'", MYSQLI_ASSOC);
$result = $result->fetch_assoc();
$primary_key = $result["Column_name"];

$sql = "DELETE FROM " . $table_name . " WHERE " . $primary_key . " = " . $_GET["primary_key"];
$conn->query($sql);

$conn->close();

header('Location:' . './tables.php');
die();

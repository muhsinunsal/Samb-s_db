<?php
$servername = "localhost";
$username = "cmpe341";
$password = "";

$keys = array_key_first($_GET);
$table_name = preg_split("/_/", $keys)[0];

$sql = "INSERT INTO " . $table_name . " VALUES (";
for ($i = 0; $i < count($_GET); $i++) {
    if ($i != 0) {
        $sql .= ",";
    }
    if ($_GET[$table_name . "_row_" . $i] == null) {
        $sql .= "NULL";
    } else {
        $sql .= "'".$_GET[$table_name . "_row_" . $i]."'";
    }
};

$sql .= ");";
echo($sql);
$conn = new mysqli($servername, $username, $password, "cmpe341");
$conn->query($sql);

$conn->close();

header('Location:' . './tables.php');
die();

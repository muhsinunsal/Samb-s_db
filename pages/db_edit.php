<?php
$servername = "localhost";
$username = "cmpe341";
$password = "";
$table_name = $_GET["table_name"];


$sql = "DESC " . $table_name;

$conn = new mysqli($servername, $username, $password, "cmpe341");
$result = $conn->query($sql);


$columns_names = [];
$desc_data = $result->fetch_all(MYSQLI_ASSOC);
foreach ($desc_data as $column) {
    array_push($columns_names, $column["Field"]);
}
 print_r($_GET);

$edit_sql = "UPDATE " . $table_name . " SET ";

for ($i = 0; $i < count($columns_names); $i++) {
    if (str_contains($desc_data[$i]["Type"], "varchar")) {
        if (count($columns_names) - 1 == $i) {
            $edit_sql .= "" . $columns_names[$i] . " = '" . $_GET[array_keys($_GET)[$i]] . "' ";
        } else {
            $edit_sql .= "" . $columns_names[$i] . " = '" . $_GET[array_keys($_GET)[$i]] . "', ";
        }
    }else{
        if (count($columns_names) - 1 == $i) {
            $edit_sql .= "" . $columns_names[$i] . " = " . $_GET[array_keys($_GET)[$i]] . " ";
        } else {
            $edit_sql .= "" . $columns_names[$i] . " = " . $_GET[array_keys($_GET)[$i]] . ", ";
        }
    }

}
$edit_sql .= "WHERE " . $columns_names[0] . " = " . $_GET[array_keys($_GET)[0]] . ";";

echo $edit_sql;
$conn->query($edit_sql);

$conn->close();

header('Location:' . './tables.php?table_name=' . $table_name);
die();

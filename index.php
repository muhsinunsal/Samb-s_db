<!DOCTYPE html>
<html lang="en">
<!--
SELECT `bus`.`PLATE_NUMBER`, `driver`.`FIRST_NAME`, `driver`.`LAST_NAME`, `driver_assistant`.`FIRST_NAME`, `driver_assistant`.`LAST_NAME`
FROM `bus`
	, `driver`
	, `driver_assistant`
INNER JOIN bus ON driver.DRIVER_ID = bus.BUS_ID,
INNER JOIN driver_assistant ON driver.DRIVER_ID = driver_assistant.DRIVER_ID;
; -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sambüs</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <nav>
        <div class="container">
            <div class="logo"><a href="./">SAMBÜS</a></div>
            <div class="nav_container">
                <a class="nav_element -right" href="./pages/tables.php">Tables</a>
                <a class="nav_element -right" href="./pages/quaries.php">Quaries</a>
            </div>

    </nav>
    <div class="banner">Homepage</div>

    <div class="main container">
        <?php
        $servername = "localhost";
        $username = "cmpe341";
        $password = "";
        $conn = new mysqli($servername, $username, $password, "cmpe341");

        $table_names_SQL = "SELECT table_name FROM information_schema.tables WHERE table_schema = 'cmpe341';";
        function table_name_mapFunction($v)
        {
            return ($v[0]);
        };

        $table_names_result = $conn->query($table_names_SQL)->fetch_all();
        if (sizeof($table_names_result) <= 0) {
            echo "There is not a single table in this database.";
        }
        $table_names_result =  array_map("table_name_mapFunction", $table_names_result);

        ?>

        <!-- <div class=<?php echo $show_error_message ? "'error_popup -active'" : "'error_popup'" ?>>
            <div>Database Error <span>⮾</span></div>
        </div> -->
        <!-- <div class=<?php echo $show_error_message ? "'grid -hidden'" : "'grid'" ?>> -->
        <div class="grid">
            <?php
            foreach ($table_names_result as $table) {
            ?>
                <div class="partition">
                    <?php
                    $sql = "SELECT * FROM ".$table;
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        // output data of each rows
                        $rows = $result->fetch_all(MYSQLI_ASSOC);
                    } else {
                        $rows = null;
                    }
                    ?>
                    <span class="partition-header"><?php echo $table ?></span>
                    <table>
                        <thead>
                            <tr>
                                <?php
                                foreach (array_keys($rows[0]) as $key) {
                                ?>
                                    <?php
                                    if (array_key_first($rows[0]) == $key) {
                                        echo "<td class='prime-key'>" . $key . "</td>";
                                    } else {
                                        echo "<td>" . $key . "</td>";
                                    }
                                    ?>
                                <?php
                                }
                                ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($rows as $row) {
                            ?>
                                <tr>
                                    <?php
                                    foreach ($row as $key) {
                                    ?>
                                        <td><?php echo $key ?></td>
                                    <?php
                                    }
                                    ?>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            <?php
            } ?>
        </div>
    </div>
    <form autocomplete="off" action="./">
        <button id="refresh">⭯</button>
    </form>
</body>
<script src="script.js"></script>

</html>
<?php
$conn->close();
?>
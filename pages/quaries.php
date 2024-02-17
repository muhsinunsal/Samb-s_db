<?php
$servername = "localhost";
$username = "cmpe341";
$password = "";
$conn = new mysqli($servername, $username, $password, "cmpe341");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quaries</title>
    <link rel="stylesheet" href="../style.css">

</head>

<body>
    <nav>
        <div class="container">
            <div class="logo"><a href="../">SAMBÜS</a></div>
            <div class="nav_container">
                <a class="nav_element -right" href="./tables.php">Tables</a>
                <a class="nav_element -right" href="./quaries.php">Quaries</a>
            </div>
    </nav>
    <div class="banner">Quaries</div>

    <div class="main container">

        <div class="partition">
        <span class="partition-header">Bus Fleet</span>

            <div class="partition_mini">
                <?php
                $sql = "SELECT `bus`.BUS_ID, `bus`.`PLATE_NUMBER`, `driver`.DRIVER_ID ,`driver`.`FIRST_NAME`, `driver`.`LAST_NAME`, `driver_assistant`.ASSISTANT_ID ,`driver_assistant`.`FIRST_NAME`, `driver_assistant`.`LAST_NAME`\n"

                    . "FROM `bus`, `driver`, `driver_assistant`\n"

                    . "WHERE `driver`.DRIVER_ID = `bus`.BUS_ID\n"

                    . "AND `driver`.DRIVER_ID = `driver_assistant`.DRIVER_ID;";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    // output data of each rows
                    $rows = $result->fetch_all(MYSQLI_ASSOC);
                } else {
                    $rows = null;
                }
                ?>
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
            <div class="partition_mini -right">
                <span>
                    SELECT bus.BUS_ID, bus.PLATE_NUMBER, driver.DRIVER_ID ,driver.FIRST_NAME, driver.LAST_NAME, driver_assistant.ASSISTANT_ID ,driver_assistant.FIRST_NAME, driver_assistant.LAST_NAME
                    <br>FROM bus, driver, driver_assistant
                    <br>WHERE driver.DRIVER_ID = bus.BUS_ID
                    <br>AND driver.DRIVER_ID = driver_assistant.DRIVER_ID;
                </span>
            </div>
        </div>


        <form autocomplete="off" action="./quaries.php">
            <button id="refresh">⭯</button>
        </form>
</body>

</html>

<?php
$conn->close();
?>
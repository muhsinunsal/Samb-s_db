<?php
$servername = "localhost";
$username = "cmpe341";
$password = "";
$conn = new mysqli($servername, $username, $password, "cmpe341");
$key_number = 0;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tables</title>
    <link rel="stylesheet" href="../style.css">

</head>

<body>
    <script>
        let rowNumber = 0
    </script>
    <nav>
        <div class="container">
            <div class="logo"><a href="../">SAMBÜS</a></div>
            <div class="nav_container">
                <a class="nav_element -right" href="./tables.php">Tables</a>
                <a class="nav_element -right" href="./quaries.php">Quaries</a>
            </div>
    </nav>
    <div class="banner">Tables</div>
    <div class="main container">
        <form autocomplete="off" action="./tables.php" method="get" class="search-form">
            <select name="table_name">
                <option disabled selected="selected"> Select Table</option>
                <?php
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
                foreach ($table_names_result as $table_name) {
                ?>
                    <option><?php echo $table_name ?></option>
                <?php
                }
                ?>
            </select>
            <input type="submit" value="✓">
        </form>
        <?php
        if ($_GET) {
            $table_name = $_GET["table_name"];

            $dont_search = false;
            $sql = "SELECT * FROM " . $table_name;
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $rows = $result->fetch_all(MYSQLI_ASSOC);
            } else {
                $rows = null;
            }
        ?>
            <div class="partition">


                <span class="partition-header"><?php echo $table_name ?></span>
                <table>
                    <thead>
                        <tr>
                            <?php
                            foreach (array_keys($rows[0]) as $key) {
                                $key_number++;
                            ?>
                                <script>
                                    rowNumber++
                                </script>
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
                        <tr>
                            <?php
                            for ($i = 0; $i < count($rows[0]); $i++) {
                            ?>
                                <td><input type="text" class="object_input" name=<?php echo $table_name . "_row_" . $i ?> form=<?php echo "add_form_" . $table_name ?> <?php echo $i == 0 ? "required" : "" ?>> </td>
                            <?php
                            }
                            ?>
                            <td>
                                <button form=<?php echo "add_form_" . $table_name ?> class="add_btn">Add</button>
                            </td>

                        </tr>
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
                                <td>
                                    <button class="edit_btn" form=<?php echo "edit_form_" . $table_name . "_" . reset($row) ?>>Edit</button>
                                    <button class="edit_confirm_btn -hidden" form=<?php echo "edit_confirm_form_" . $table_name . "_" . reset($row) ?>>Confirm</button>
                                </td>
                                <td><button class="remove_btn" type="submit" form=<?php echo "remove_form_" . $table_name . "_" . reset($row) ?>>Remove</button></td>
                            </tr>
                        <?php
                        }

                        ?>
                    </tbody>
                </table>

            </div>
    </div>
    <?php
            foreach ($rows as $row) {

    ?>
        <form autocomplete="off" action="./db_remove.php" method="get" id=<?php echo "remove_form_" . $table_name . "_" . reset($row) ?>>
            <input type="hidden" name="table_name" value=<?php echo $table_name ?>>
            <input type="hidden" name="primary_key" value=<?php echo reset($row) ?>>
        </form>
    <?php
            };
            foreach ($rows as $row) {
    ?>
        <form autocomplete="off" action="./db_edit.php" method="get" id=<?php echo "edit_confirm_form_" . $table_name . "_" . reset($row) ?>>
            <input type="hidden" name="table_name" value=<?php echo $table_name ?>>
        </form>
    <?php

            }
    ?>


    <form autocomplete="off" method="get" action="./db_input.php" id=<?php echo "add_form_" . $table_name ?>></form>

    <form autocomplete="off" action="./tables.php" method="get">
        <input id="refresh" type="submit" value="⭯">
    </form>
<?php
        } else {
?>
<?php
        }
?>
<script>
    const btns = document.querySelectorAll(".edit_btn");
    btns.forEach(btn => {
        btn.addEventListener("click", n => {
            btn.classList.toggle("-hidden");
            const table_name = btn.attributes["form"].value.split("_")[2];
            const primary_key = btn.attributes["form"].value.split("_")[3];

            let confirm_btn = document.querySelector(`[form="edit_confirm_form_${table_name}_${primary_key}"]`);
            confirm_btn.classList.toggle("-hidden");

            const parentTableRow = confirm_btn.closest('tr');
            const parentTableRow_COLUMNS = parentTableRow.querySelectorAll("td");
            for (let i = 0; i < rowNumber; i++) {
                let obj = document.createElement("input");
                obj.setAttribute("type", "input");
                obj.setAttribute("name",i)
                obj.setAttribute("form", `edit_confirm_form_${table_name}_${primary_key}`);
                let copy_innerHTML = parentTableRow_COLUMNS[i].innerHTML;
                parentTableRow_COLUMNS[i].innerHTML = "";
                obj.value = copy_innerHTML;
                parentTableRow_COLUMNS[i].appendChild(obj);
            }
            let row_inputs = []
            // parentTableRow_COLUMNS.forEach((colmn) => row_inputs.push(colmn))
            for (let i = 0; i < rowNumber; i++) {
                row_inputs.push(parentTableRow_COLUMNS[i].querySelector("input"))
            }
            let row_values = row_inputs.map((inp) => inp.value);
            console.log(row_values)

        })

    });
</script>
</body>

</html>
<?php
$conn->close();
?>